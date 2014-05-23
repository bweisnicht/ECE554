`default_nettype none
module test();
wire signed [23:0] a, b;
assign a = -24'd8002048;
assign b = 24'd7830784;
wire signed [24:0] a_, b_;
assign a_= {a[23],a[23:0]};
assign b_= {b[23],b[23:0]};
wire signed [24:0] ab_;
assign ab_=(a_-b_);
initial begin
    #5;
    $display("(%d+%d)>>1=%d", a, b, (a+b)>>>1);
    $display("(%d-%d) = %d >>1=%d", a, b,(a-b), (a-b)>>>1);
    $display("(%d-%d) >>1=%d", a, b,({a[23],a}-{b[23],b})>>>1);
    $display("(%d-%d) = %d >>1=%d=%d", a_, b_,ab_, ab_>>>1,ab_[24:1]);
    $display("(%b-%b) = %b >>1=%b=%b", a_, b_,ab_, ab_>>>1,ab_[24:1]);
end
endmodule
