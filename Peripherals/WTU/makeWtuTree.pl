#!/usr/bin/perl
my $bitwidth=24;
my $depth=$ARGV[0];

my $modulename;
my $numOutputs;
my $net_out_bitwidth;
my $level;
my $bitwidth_m1;
my $level_m1;
my $net_out_bitwidth_m1;
my $sub_net_out_bitwidth_m1;
my $depth_m1=$depth-1;
for ($level = 1; $level <= $depth; $level++) {
    $modulename=wtu_lvl_.$level;
    $numOutputs=2**$level;
    $net_out_bitwidth=$numOutputs*$bitwidth;
    $sub_net_out_bitwidth=$net_out_bitwidth/2;
    $submodulename=wtu_lvl_.($level-1);

    $bitwidth_m1=($bitwidth-1);
    $level_m1=($level-1);
    $net_out_bitwidth_m1=($net_out_bitwidth-1);
    $sub_net_out_bitwidth_m1=($sub_net_out_bitwidth-1);

    my $submodule_hp_declaration = <<ENDHP;
$submodulename wtu_hp (
                       .in(hpo),
                       .ld_a(ld_a[$level_m1:1]),
                       .ld_b(ld_b[$level_m1:1]),
                       .ld_o(ld_o[$level_m1:1]),
                       .clk(clk),
                       .rst(rst),
                       .out(hs)
                      );
ENDHP
    
    my $submodule_lp_declaration = <<ENDLP;
$submodulename wtu_lp (
                       .in(lpo),
                       .ld_a(ld_a[$level_m1:1]),
                       .ld_b(ld_b[$level_m1:1]),
                       .ld_o(ld_o[$level_m1:1]),
                       .clk(clk),
                       .rst(rst),
                       .out(ls)
                      );
ENDLP
    if($level==1) {
        $submodule_lp_declaration = "assign ls = lpo;";
        $submodule_hp_declaration = "assign hs = hpo;";
    }
    my $module = <<ENDVLOG;
module $modulename (
                    input wire [$bitwidth_m1:0] in,
                    input wire [$level_m1:0] ld_a,
                    input wire [$level_m1:0] ld_b,
                    input wire [$level_m1:0] ld_o,
                    input wire clk, rst,
                    output wire [$net_out_bitwidth_m1:0] out
                   );
wire [$bitwidth_m1:0] lpo, hpo;
wtu_unit wtu_m (.in(in),
                .ld_a(ld_a[0]),
                .ld_b(ld_b[0]),
                .ld_o(ld_o[0]),
                .clk(clk),
                .rst(rst),
                .lpo(lpo),
                .hpo(hpo)
               );
wire [$sub_net_out_bitwidth_m1:0] hs,ls;
$submodule_hp_declaration
$submodule_lp_declaration

assign out = {hs,ls};

endmodule     

ENDVLOG
    open(MODFILE,">$modulename.v");
    print MODFILE $module;
    close(MODFILE);
}

#Top-Level Module
my $numOm1=$numOutputs-1;
my $index=0;
my $outs;
for($count=0; $count < $net_out_bitwidth_m1; $count+=$bitwidth){
    my $cpbwm1 = $count+$bitwidth-1;
    $outs=$outs."    wire signed [$bitwidth_m1:0] outs$index;\n\tassign outs$index=out[$cpbwm1:$count];\n";
    $index++;
}
my $outputs = <<ENDOUTS;
    wire [$bitwidth_m1:0] outs [0:$numOm1];
$outs
ENDOUTS
my $outputs = $outs;
my $enLogic="\t\t\ten_v[0]<=1'b1;\n";
for($count=1; $count < $depth; $count++){
    my $count_m1=$count-1;
    $enLogic.="\t\t\ten_v[$count] = &en_count[$count_m1:0];\n";
}
my $topLevel = <<ENDTL;
module wtu_topLevel(
                    input wire [$bitwidth_m1:0] in,
                    input wire en,
                    input wire clk,rst,
                    output wire [$net_out_bitwidth_m1:0] out,
                    output wire in_en
                   );
    wire [$depth_m1:0] ld_a, ld_b, ld_o;
    assign in_en = ld_a[0] | ld_b[0];
    loader #($depth) ld (
                            .clk(clk),
                            .rst(rst),
                            .en(en),
                            .ld_a(ld_a),
                            .ld_b(ld_b),
                            .ld_o(ld_o)
                           );
    $modulename wtu0 (
                      .in(in),
                      .ld_a(ld_a),
                      .ld_b(ld_b),
                      .ld_o(ld_o),
                      .clk(clk),
                      .rst(rst),
                      .out(out)
                     );
$outputs
endmodule
ENDTL

open(TOPFILE,">wtu_top.v");
print TOPFILE $topLevel;
close(TOPFILE);

#TestBench
my @values=('5125','15657','5358','15899',
            '5246','235','11358','20354',
            '30589','-31258','30252','-29872',
            '31234','9585','14268','4265',
            '9666','14235','18635','25365',
            '31256','28282','29092','5123',
            '21234','-14112','11111','5555',
            '15352','23625','5123','-5123');
my $inputs="";
for($count=0;$count<@values; $count++){
    $inputs.="    @(posedge clk)\n";
    $inputs.="    en=1;\n";
    $inputs.="    in=$values[$count];\n";
}
my $cases;
for($count=0;$count<@values; $count++){
    $cases.="\t\t\t5'd$count : out=$values[$count];\n"
}

my $tb = <<ENDTB;
module tb_wtu_top ();

reg clk,rst;
wire [23:0] in_b;
wire [15:0] in;
assign in_b = {in,8'b0};
reg en;
wire [$net_out_bitwidth_m1:0] out;
wire in_en;
wtu_topLevel UUT(
                 .in(in_b),
                 .en(en),
                 .in_en(in_en),
                 .clk(clk),
                 .rst(rst),
                 .out(out)
                );
$outputs
inputFiles files(
                 .clk(clk),
                 .rst(rst),
                 .en(in_en),
                 .out(in)
                );
initial begin
    en=0;
    clk=0;
    rst=1;
  //  in=0;
    #7;
    rst=0;
    en=1;
    @(posedge clk);
/*
$inputs
*/
    #5000;
    \$finish;
end

always #5 clk <= ~clk;
endmodule

module inputFiles (input wire clk, rst, 
                   input wire en, 
                   output reg [15:0] out);
    reg [4:0] address;
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            address<=0;
        end else if(en) begin
            address<=address+1;
        end else begin
            address<=address;
        end
    end
    always @(*) begin
        case(address)
$cases
        endcase
    end
endmodule

ENDTB


open(TBFILE,">tb_wtu_top.v");
print TBFILE $tb;
close(TBFILE);

