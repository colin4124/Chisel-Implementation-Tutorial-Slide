val clk_3   = IO(Input(Clock()))
val rst_3   = IO(Input(AsyncPosReset()))
val cat     = IO(Input(UInt(3.W)))
val reg_cat = withClockAndReset(clk_3, rst_3) { RegInit(0.U(3.W)) }
reg_cat := cat
