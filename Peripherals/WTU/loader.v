`default_nettype none
module loader
             #(parameter WIDTH=3)
             (
              input wire clk,
              input wire rst,
              input wire en,
              output reg [WIDTH-1:0] ld_a, ld_b, ld_o
             );

    localparam T = WIDTH-1;
 generate
  if (WIDTH > 1) begin
        wire [WIDTH-2:0] ld_a_, ld_b_, ld_o_;
        loader #(WIDTH-1) ld (
                              .clk(clk),
                              .rst(rst),
                              .en(en),
                              .ld_a(ld_a_),
                              .ld_b(ld_b_),
                              .ld_o(ld_o_)
                             );
    always @(*) begin
        ld_a[T-1:0] = ld_a_;
        ld_b[T-1:0] = ld_b_;
        ld_o[T-1:0] = ld_o_;
    end

    reg [1:0] counter;
    always @(posedge clk, posedge rst) begin
        ld_a[T]<= 0;
        ld_b[T]<= 0;
        ld_o[T]<= 0;
        if(rst)begin
            counter<= 0;
        end else begin
            if(counter[1]==0) begin
                if(ld_o[T-1]) begin
                    counter <= counter + 1;
                    if(counter[0]==0) begin
                        ld_a[T]<=1;
                    end else begin // counter[0]==1
                        ld_b[T]<=1;
                    end
                end else begin
                    counter <= counter;
                end
            end else begin //counter[1]==1
                ld_o[T]<=1;
                counter<=0;
            end
        end
    end
  end else begin
    reg [1:0] counter;
    always @(posedge clk, posedge rst) begin
        ld_a[T]<= 0;
        ld_b[T]<= 0;
        ld_o[T]<= 0;
        if(rst) begin
            counter <= 0;
        end else begin
            counter <= counter + 1;
            if(counter==2'b00) begin
                ld_a[T]<=1;
            end else if(counter==2'b01) begin
                ld_b[T]<=1;
            end else begin
                ld_o[T]<=1;
                counter<=0;
            end
        end
    end
  end
 endgenerate
endmodule
