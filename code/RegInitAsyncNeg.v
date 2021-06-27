input        clk_2,
input        rst_2,
input  [2:0] bar,
...
reg  [2:0] reg_bar;
always @(posedge clk_2 or negedge rst_2) begin
  if (!rst_2) begin
    reg_bar <= 3'h0;
  end else begin
    reg_bar <= bar;
  end
end
