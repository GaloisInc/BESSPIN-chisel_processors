
module data_arrays_0_ext(
  input RW0_clk,
  input [7:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [31:0] RW0_wmask,
  input [255:0] RW0_wdata,
  output [255:0] RW0_rdata
);
  data_arrays_0_half u0 (
    .RW0_clk (RW0_clk),
    .RW0_addr(RW0_addr),
    .RW0_en(RW0_en),
    .RW0_wmode(RW0_wmode),
    .RW0_wmask(RW0_wmask[15:0]),
    .RW0_wdata(RW0_wdata[127:0]),
    .RW0_rdata(RW0_rdata[127:0]));

  data_arrays_0_half u1 (
    .RW0_clk (RW0_clk),
    .RW0_addr(RW0_addr),
    .RW0_en(RW0_en),
    .RW0_wmode(RW0_wmode),
    .RW0_wmask(RW0_wmask[31:16]),
    .RW0_wdata(RW0_wdata[255:128]),
    .RW0_rdata(RW0_rdata[255:128]));

endmodule

module data_arrays_0_half(
  input RW0_clk,
  input [7:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [31:0] RW0_wmask,
  input [255:0] RW0_wdata,
  output [255:0] RW0_rdata
);

  reg reg_RW0_ren;
  reg [7:0] reg_RW0_addr;
  (* ram_style = "block" *) reg [127:0] ram [255:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 256; initvar = initvar+1)
        ram[initvar] = {8 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][7:0] <= RW0_wdata[7:0];
      if (RW0_wmask[1]) ram[RW0_addr][15:8] <= RW0_wdata[15:8];
      if (RW0_wmask[2]) ram[RW0_addr][23:16] <= RW0_wdata[23:16];
      if (RW0_wmask[3]) ram[RW0_addr][31:24] <= RW0_wdata[31:24];
      if (RW0_wmask[4]) ram[RW0_addr][39:32] <= RW0_wdata[39:32];
      if (RW0_wmask[5]) ram[RW0_addr][47:40] <= RW0_wdata[47:40];
      if (RW0_wmask[6]) ram[RW0_addr][55:48] <= RW0_wdata[55:48];
      if (RW0_wmask[7]) ram[RW0_addr][63:56] <= RW0_wdata[63:56];
      if (RW0_wmask[8]) ram[RW0_addr][71:64] <= RW0_wdata[71:64];
      if (RW0_wmask[9]) ram[RW0_addr][79:72] <= RW0_wdata[79:72];
      if (RW0_wmask[10]) ram[RW0_addr][87:80] <= RW0_wdata[87:80];
      if (RW0_wmask[11]) ram[RW0_addr][95:88] <= RW0_wdata[95:88];
      if (RW0_wmask[12]) ram[RW0_addr][103:96] <= RW0_wdata[103:96];
      if (RW0_wmask[13]) ram[RW0_addr][111:104] <= RW0_wdata[111:104];
      if (RW0_wmask[14]) ram[RW0_addr][119:112] <= RW0_wdata[119:112];
      if (RW0_wmask[15]) ram[RW0_addr][127:120] <= RW0_wdata[127:120];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [127:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random, $random, $random, $random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[127:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule

module tag_array_ext(
  input RW0_clk,
  input [4:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [91:0] RW0_wdata,
  output [91:0] RW0_rdata
);

  reg reg_RW0_ren;
  reg [4:0] reg_RW0_addr;
  reg [91:0] ram [31:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 32; initvar = initvar+1)
        ram[initvar] = {3 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][22:0] <= RW0_wdata[22:0];
      if (RW0_wmask[1]) ram[RW0_addr][45:23] <= RW0_wdata[45:23];
      if (RW0_wmask[2]) ram[RW0_addr][68:46] <= RW0_wdata[68:46];
      if (RW0_wmask[3]) ram[RW0_addr][91:69] <= RW0_wdata[91:69];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [95:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[91:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule

module tag_array_0_ext(
  input RW0_clk,
  input [4:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [87:0] RW0_wdata,
  output [87:0] RW0_rdata
);

  reg reg_RW0_ren;
  reg [4:0] reg_RW0_addr;
  reg [87:0] ram [31:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 32; initvar = initvar+1)
        ram[initvar] = {3 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][21:0] <= RW0_wdata[21:0];
      if (RW0_wmask[1]) ram[RW0_addr][43:22] <= RW0_wdata[43:22];
      if (RW0_wmask[2]) ram[RW0_addr][65:44] <= RW0_wdata[65:44];
      if (RW0_wmask[3]) ram[RW0_addr][87:66] <= RW0_wdata[87:66];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [95:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[87:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule

module data_arrays_0_0_ext(
  input RW0_clk,
  input [7:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [127:0] RW0_wdata,
  output [127:0] RW0_rdata
);

  reg reg_RW0_ren;
  reg [7:0] reg_RW0_addr;
  reg [127:0] ram [255:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 256; initvar = initvar+1)
        ram[initvar] = {4 {$random}};
      reg_RW0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge RW0_clk)
    reg_RW0_ren <= RW0_en && !RW0_wmode;
  always @(posedge RW0_clk)
    if (RW0_en && !RW0_wmode) reg_RW0_addr <= RW0_addr;
  always @(posedge RW0_clk)
    if (RW0_en && RW0_wmode) begin
      if (RW0_wmask[0]) ram[RW0_addr][31:0] <= RW0_wdata[31:0];
      if (RW0_wmask[1]) ram[RW0_addr][63:32] <= RW0_wdata[63:32];
      if (RW0_wmask[2]) ram[RW0_addr][95:64] <= RW0_wdata[95:64];
      if (RW0_wmask[3]) ram[RW0_addr][127:96] <= RW0_wdata[127:96];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [127:0] RW0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      RW0_random = {$random, $random, $random, $random};
      reg_RW0_ren = RW0_random[0];
    end
  `endif
  always @(posedge RW0_clk) RW0_random <= {$random, $random, $random, $random};
  assign RW0_rdata = reg_RW0_ren ? ram[reg_RW0_addr] : RW0_random[127:0];
  `else
  assign RW0_rdata = ram[reg_RW0_addr];
  `endif

endmodule

module mem_ext(
  input W0_clk,
  input [24:0] W0_addr,
  input W0_en,
  input [63:0] W0_data,
  input [7:0] W0_mask,
  input R0_clk,
  input [24:0] R0_addr,
  input R0_en,
  output [63:0] R0_data
);

  reg reg_R0_ren;
  reg [24:0] reg_R0_addr;
  reg [63:0] ram [33554431:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 33554432; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    reg_R0_ren <= R0_en;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][7:0] <= W0_data[7:0];
      if (W0_mask[1]) ram[W0_addr][15:8] <= W0_data[15:8];
      if (W0_mask[2]) ram[W0_addr][23:16] <= W0_data[23:16];
      if (W0_mask[3]) ram[W0_addr][31:24] <= W0_data[31:24];
      if (W0_mask[4]) ram[W0_addr][39:32] <= W0_data[39:32];
      if (W0_mask[5]) ram[W0_addr][47:40] <= W0_data[47:40];
      if (W0_mask[6]) ram[W0_addr][55:48] <= W0_data[55:48];
      if (W0_mask[7]) ram[W0_addr][63:56] <= W0_data[63:56];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] R0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      R0_random = {$random, $random};
      reg_R0_ren = R0_random[0];
    end
  `endif
  always @(posedge R0_clk) R0_random <= {$random, $random};
  assign R0_data = reg_R0_ren ? ram[reg_R0_addr] : R0_random[63:0];
  `else
  assign R0_data = ram[reg_R0_addr];
  `endif

endmodule

module mem_0_ext(
  input W0_clk,
  input [8:0] W0_addr,
  input W0_en,
  input [63:0] W0_data,
  input [7:0] W0_mask,
  input R0_clk,
  input [8:0] R0_addr,
  input R0_en,
  output [63:0] R0_data
);

  reg reg_R0_ren;
  reg [8:0] reg_R0_addr;
  reg [63:0] ram [511:0];
  `ifdef RANDOMIZE_MEM_INIT
    integer initvar;
    initial begin
      #`RANDOMIZE_DELAY begin end
      for (initvar = 0; initvar < 512; initvar = initvar+1)
        ram[initvar] = {2 {$random}};
      reg_R0_addr = {1 {$random}};
    end
  `endif
  integer i;
  always @(posedge R0_clk)
    reg_R0_ren <= R0_en;
  always @(posedge R0_clk)
    if (R0_en) reg_R0_addr <= R0_addr;
  always @(posedge W0_clk)
    if (W0_en) begin
      if (W0_mask[0]) ram[W0_addr][7:0] <= W0_data[7:0];
      if (W0_mask[1]) ram[W0_addr][15:8] <= W0_data[15:8];
      if (W0_mask[2]) ram[W0_addr][23:16] <= W0_data[23:16];
      if (W0_mask[3]) ram[W0_addr][31:24] <= W0_data[31:24];
      if (W0_mask[4]) ram[W0_addr][39:32] <= W0_data[39:32];
      if (W0_mask[5]) ram[W0_addr][47:40] <= W0_data[47:40];
      if (W0_mask[6]) ram[W0_addr][55:48] <= W0_data[55:48];
      if (W0_mask[7]) ram[W0_addr][63:56] <= W0_data[63:56];
    end
  `ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [63:0] R0_random;
  `ifdef RANDOMIZE_MEM_INIT
    initial begin
      #`RANDOMIZE_DELAY begin end
      R0_random = {$random, $random};
      reg_R0_ren = R0_random[0];
    end
  `endif
  always @(posedge R0_clk) R0_random <= {$random, $random};
  assign R0_data = reg_R0_ren ? ram[reg_R0_addr] : R0_random[63:0];
  `else
  assign R0_data = ram[reg_R0_addr];
  `endif

endmodule
