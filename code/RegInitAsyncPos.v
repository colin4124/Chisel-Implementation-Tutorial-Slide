input        clk_3,
input        rst_3,
input  [2:0] cat,
...
reg  [2:0] reg_cat;
always @(posedge clk_3 or posedge rst_3) begin
  if (rst_3) begin
    reg_cat <= 3'h0;
  end else begin
    reg_cat <= cat;
  end
end
