`default_nettype none
module wtu_unit(in, ld_a, ld_b, ld_o, clk, rst, lpo, hpo);
    input wire signed [23:0] in;
    input wire ld_a, ld_b, ld_o, clk, rst;
    output reg signed [23:0] lpo;
    output reg signed [23:0] hpo;
    
    reg signed [23:0] in_prev1, in_prev2;
    wire signed [23:0] lp,hp;

    //wire [24:0] tmpA; assign tmpA = {in_prev1[23], in_prev1} + {in_prev2[23], in_prev2};
    //wire [24:0] tmpB; assign tmpB = {in_prev1[23], in_prev1} - {in_prev2[23], in_prev2};
    
    assign lp = ({in_prev1[23],in_prev1} + {in_prev2[23],in_prev2})>>>1;
    assign hp = ({in_prev1[23],in_prev1} - {in_prev2[23],in_prev2})>>>1;
    //assign lpo = tmpA[24:1];
    //assign hpo = tmpB[24:1];
        
    always @(posedge clk, posedge rst) begin
        if (rst) begin
            in_prev1 <= 24'b0;
            in_prev2 <= 24'b0;
            lpo      <= 24'b0;
            hpo      <= 24'b0;
        end else begin
            in_prev1 <= in_prev1;
            in_prev2 <= in_prev2;
            if(ld_a) in_prev2 <= in;
            if(ld_b) in_prev1 <= in;
            if(ld_o) begin
                lpo <= lp;
                hpo <= hp;
            end
        end
    end
    
endmodule
