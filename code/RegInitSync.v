input        clk_1,
input        rst_1,
input  [2:0] foo,
...
reg  [2:0] reg_foo;
always @(posedge clk_1) begin
  if (rst_1) begin
    reg_foo <= 3'h0;
  end else begin
    reg_foo <= foo;
  end
end
