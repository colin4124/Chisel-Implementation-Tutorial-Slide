val clk = IO(Input(Clock()))
val in  = IO(Input(UInt(3.W)))

val delayReg = withClock(clk) {
  Reg(UInt(3.W))
}

delayReg := in

