module d_ff_tb;

reg clk;
reg reset;
reg d;
wire q;

d_ff uut (
    .clk(clk),
    .reset(reset),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    d = 0;

    #10 reset = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;

    #10 $finish;
end

endmodule
