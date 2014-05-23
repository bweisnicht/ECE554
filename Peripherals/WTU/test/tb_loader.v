module tb_loader();
    reg clk,rst,en;
    wire [2:0] ld_a,ld_b,ld_o;

    loader #(3) ld (.clk(clk),.rst(rst),.en(en),.ld_a(ld_a),.ld_b(ld_b),.ld_o(ld_o));

    initial begin
        $monitor("ld_a:%b ld_b:%b ld_o:%b", ld_a, ld_b, ld_o);
        clk=0;
        rst=1;
        en=0;
        #7;
        rst=0;
        en=1;
        #330 $finish;
    end
    always #5 clk=~clk;
endmodule
