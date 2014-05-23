module wtu(clk,rst,in,out);
    parameter WIDTH=24;
    parameter WT_WIDTH=8;
    parameter WT_BITWIDTH=3;

    input wire clk,rst;
    input wire [WIDTH:0] in;
    output wire [WIDTH*WT_WIDTH-1:0] out;

    wire [WT_BITWIDTH-1:0] en;
    wire [WIDTH-1:0] wt_data[0:WT_WIDTH-1][0:WT_BITWIDTH-1];

    genvar i, j,c;

    generate
        c=0;
        for (i=1;i<=WT_WIDTH;i=i*2) begin
            for(j=0;j<i;j=j+1) begin
               wtu_unit U (.in(),
                           .en(en[c]),
                           .clk(clk),
                           .rst(rst),
                           .lpo(),
                           .hpo(),
                          ); 
            end
            c=c+1;
        end
    endgenerate

endmodule

