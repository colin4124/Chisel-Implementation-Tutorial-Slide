val clk_2   = IO(Input(Clock()))
val rst_2   = IO(Input(AsyncNegReset()))
val bar     = IO(Input(UInt(3.W)))
val reg_bar = withClockAndReset(clk_2, rst_2) {
  RegInit(0.U(3.W))
}
reg_bar := bar
