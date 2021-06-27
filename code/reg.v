input        clk,
input  [2:0] in,
...
reg  [2:0] delayReg;
always @(posedge clk) begin
  delayReg <= in;
end
