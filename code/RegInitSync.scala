val clk_1 = IO(Input(Clock()))
val rst_1 = IO(Input(Reset()))
val foo   = IO(Input(UInt(3.W)))
val reg_foo = withClockAndReset(clk_1, rst_1) {
  RegInit(0.U(3.W))
}
reg_foo := foo
