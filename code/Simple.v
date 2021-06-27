module WhichFruit (
  input        clk,
  input        rst,
  input        sel,
  input        apple,
  input        cherry,
  input  [2:0] water,
  output [2:0] juice
);
  reg  [2:0] bowl;
  wire fruit;
  assign fruit = (sel & apple) | ((~ sel) & cherry);
  assign juice = bowl;
  always @(posedge clk) begin
    if (rst) begin
      bowl <= 3'h5;
    end else begin
      bowl <= bowl + fruit;
    end
  end
endmodule