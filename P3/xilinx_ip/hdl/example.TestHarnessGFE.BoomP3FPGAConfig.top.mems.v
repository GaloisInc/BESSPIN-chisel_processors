module tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [87:0] RW0_wdata,
  output [87:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input  [3:0]  RW0_wmask
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [21:0] mem_0_0_RW0_wdata;
  wire [21:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [5:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [21:0] mem_0_1_RW0_wdata;
  wire [21:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [5:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [21:0] mem_0_2_RW0_wdata;
  wire [21:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [5:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [21:0] mem_0_3_RW0_wdata;
  wire [21:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [21:0] RW0_rdata_0_0;
  wire [21:0] RW0_rdata_0_1;
  wire [21:0] RW0_rdata_0_2;
  wire [21:0] RW0_rdata_0_3;
  wire [43:0] _GEN_0;
  wire [65:0] _GEN_1;
  wire [87:0] RW0_rdata_0;
  wire [43:0] _GEN_2;
  wire [65:0] _GEN_3;
  split_tag_array_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_tag_array_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_tag_array_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_tag_array_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata_0 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_2 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_3 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata = {RW0_rdata_0_3,_GEN_1};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[21:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[43:22];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[65:44];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[87:66];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
endmodule
module array_0_0_ext(
  input  [8:0]  W0_addr,
  input         W0_clk,
  input  [63:0] W0_data,
  input         W0_en,
  input         W0_mask,
  input  [8:0]  R0_addr,
  input         R0_clk,
  output [63:0] R0_data,
  input         R0_en
);
  wire [8:0] mem_0_0_W0_addr;
  wire  mem_0_0_W0_clk;
  wire [63:0] mem_0_0_W0_data;
  wire  mem_0_0_W0_en;
  wire  mem_0_0_W0_mask;
  wire [8:0] mem_0_0_R0_addr;
  wire  mem_0_0_R0_clk;
  wire [63:0] mem_0_0_R0_data;
  wire  mem_0_0_R0_en;
  wire [63:0] R0_data_0_0;
  wire [63:0] R0_data_0;
  split_array_0_0_ext mem_0_0 (
    .W0_addr(mem_0_0_W0_addr),
    .W0_clk(mem_0_0_W0_clk),
    .W0_data(mem_0_0_W0_data),
    .W0_en(mem_0_0_W0_en),
    .W0_mask(mem_0_0_W0_mask),
    .R0_addr(mem_0_0_R0_addr),
    .R0_clk(mem_0_0_R0_clk),
    .R0_data(mem_0_0_R0_data),
    .R0_en(mem_0_0_R0_en)
  );
  assign R0_data_0_0 = mem_0_0_R0_data;
  assign R0_data_0 = R0_data_0_0;
  assign R0_data = mem_0_0_R0_data;
  assign mem_0_0_W0_addr = W0_addr;
  assign mem_0_0_W0_clk = W0_clk;
  assign mem_0_0_W0_data = W0_data;
  assign mem_0_0_W0_en = W0_en;
  assign mem_0_0_W0_mask = W0_mask;
  assign mem_0_0_R0_addr = R0_addr;
  assign mem_0_0_R0_clk = R0_clk;
  assign mem_0_0_R0_en = R0_en;
endmodule
module tag_array_0_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [83:0] RW0_wdata,
  output [83:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input  [3:0]  RW0_wmask
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [20:0] mem_0_0_RW0_wdata;
  wire [20:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [5:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire [20:0] mem_0_1_RW0_wdata;
  wire [20:0] mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [5:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire [20:0] mem_0_2_RW0_wdata;
  wire [20:0] mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [5:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire [20:0] mem_0_3_RW0_wdata;
  wire [20:0] mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [20:0] RW0_rdata_0_0;
  wire [20:0] RW0_rdata_0_1;
  wire [20:0] RW0_rdata_0_2;
  wire [20:0] RW0_rdata_0_3;
  wire [41:0] _GEN_0;
  wire [62:0] _GEN_1;
  wire [83:0] RW0_rdata_0;
  wire [41:0] _GEN_2;
  wire [62:0] _GEN_3;
  split_tag_array_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_tag_array_0_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_tag_array_0_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_tag_array_0_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata_0 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_2 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_3 = {RW0_rdata_0_2,_GEN_0};
  assign RW0_rdata = {RW0_rdata_0_3,_GEN_1};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[20:0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[41:21];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[62:42];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[83:63];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
endmodule
module dataArrayWay_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [63:0] mem_0_0_RW0_wdata;
  wire [63:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [63:0] RW0_rdata_0_0;
  wire [63:0] RW0_rdata_0;
  split_dataArrayWay_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module bim_data_array_0_ext(
  input  [8:0] RW0_addr,
  input        RW0_clk,
  input  [7:0] RW0_wdata,
  output [7:0] RW0_rdata,
  input        RW0_en,
  input        RW0_wmode,
  input  [7:0] RW0_wmask
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire  mem_0_0_RW0_wdata;
  wire  mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire  mem_0_0_RW0_wmask;
  wire [8:0] mem_0_1_RW0_addr;
  wire  mem_0_1_RW0_clk;
  wire  mem_0_1_RW0_wdata;
  wire  mem_0_1_RW0_rdata;
  wire  mem_0_1_RW0_en;
  wire  mem_0_1_RW0_wmode;
  wire  mem_0_1_RW0_wmask;
  wire [8:0] mem_0_2_RW0_addr;
  wire  mem_0_2_RW0_clk;
  wire  mem_0_2_RW0_wdata;
  wire  mem_0_2_RW0_rdata;
  wire  mem_0_2_RW0_en;
  wire  mem_0_2_RW0_wmode;
  wire  mem_0_2_RW0_wmask;
  wire [8:0] mem_0_3_RW0_addr;
  wire  mem_0_3_RW0_clk;
  wire  mem_0_3_RW0_wdata;
  wire  mem_0_3_RW0_rdata;
  wire  mem_0_3_RW0_en;
  wire  mem_0_3_RW0_wmode;
  wire  mem_0_3_RW0_wmask;
  wire [8:0] mem_0_4_RW0_addr;
  wire  mem_0_4_RW0_clk;
  wire  mem_0_4_RW0_wdata;
  wire  mem_0_4_RW0_rdata;
  wire  mem_0_4_RW0_en;
  wire  mem_0_4_RW0_wmode;
  wire  mem_0_4_RW0_wmask;
  wire [8:0] mem_0_5_RW0_addr;
  wire  mem_0_5_RW0_clk;
  wire  mem_0_5_RW0_wdata;
  wire  mem_0_5_RW0_rdata;
  wire  mem_0_5_RW0_en;
  wire  mem_0_5_RW0_wmode;
  wire  mem_0_5_RW0_wmask;
  wire [8:0] mem_0_6_RW0_addr;
  wire  mem_0_6_RW0_clk;
  wire  mem_0_6_RW0_wdata;
  wire  mem_0_6_RW0_rdata;
  wire  mem_0_6_RW0_en;
  wire  mem_0_6_RW0_wmode;
  wire  mem_0_6_RW0_wmask;
  wire [8:0] mem_0_7_RW0_addr;
  wire  mem_0_7_RW0_clk;
  wire  mem_0_7_RW0_wdata;
  wire  mem_0_7_RW0_rdata;
  wire  mem_0_7_RW0_en;
  wire  mem_0_7_RW0_wmode;
  wire  mem_0_7_RW0_wmask;
  wire  RW0_rdata_0_0;
  wire  RW0_rdata_0_1;
  wire  RW0_rdata_0_2;
  wire  RW0_rdata_0_3;
  wire  RW0_rdata_0_4;
  wire  RW0_rdata_0_5;
  wire  RW0_rdata_0_6;
  wire  RW0_rdata_0_7;
  wire [1:0] _GEN_0;
  wire [2:0] _GEN_1;
  wire [3:0] _GEN_2;
  wire [4:0] _GEN_3;
  wire [5:0] _GEN_4;
  wire [6:0] _GEN_5;
  wire [7:0] RW0_rdata_0;
  wire [1:0] _GEN_6;
  wire [2:0] _GEN_7;
  wire [3:0] _GEN_8;
  wire [4:0] _GEN_9;
  wire [5:0] _GEN_10;
  wire [6:0] _GEN_11;
  split_bim_data_array_0_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode),
    .RW0_wmask(mem_0_0_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_1 (
    .RW0_addr(mem_0_1_RW0_addr),
    .RW0_clk(mem_0_1_RW0_clk),
    .RW0_wdata(mem_0_1_RW0_wdata),
    .RW0_rdata(mem_0_1_RW0_rdata),
    .RW0_en(mem_0_1_RW0_en),
    .RW0_wmode(mem_0_1_RW0_wmode),
    .RW0_wmask(mem_0_1_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_2 (
    .RW0_addr(mem_0_2_RW0_addr),
    .RW0_clk(mem_0_2_RW0_clk),
    .RW0_wdata(mem_0_2_RW0_wdata),
    .RW0_rdata(mem_0_2_RW0_rdata),
    .RW0_en(mem_0_2_RW0_en),
    .RW0_wmode(mem_0_2_RW0_wmode),
    .RW0_wmask(mem_0_2_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_3 (
    .RW0_addr(mem_0_3_RW0_addr),
    .RW0_clk(mem_0_3_RW0_clk),
    .RW0_wdata(mem_0_3_RW0_wdata),
    .RW0_rdata(mem_0_3_RW0_rdata),
    .RW0_en(mem_0_3_RW0_en),
    .RW0_wmode(mem_0_3_RW0_wmode),
    .RW0_wmask(mem_0_3_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_4 (
    .RW0_addr(mem_0_4_RW0_addr),
    .RW0_clk(mem_0_4_RW0_clk),
    .RW0_wdata(mem_0_4_RW0_wdata),
    .RW0_rdata(mem_0_4_RW0_rdata),
    .RW0_en(mem_0_4_RW0_en),
    .RW0_wmode(mem_0_4_RW0_wmode),
    .RW0_wmask(mem_0_4_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_5 (
    .RW0_addr(mem_0_5_RW0_addr),
    .RW0_clk(mem_0_5_RW0_clk),
    .RW0_wdata(mem_0_5_RW0_wdata),
    .RW0_rdata(mem_0_5_RW0_rdata),
    .RW0_en(mem_0_5_RW0_en),
    .RW0_wmode(mem_0_5_RW0_wmode),
    .RW0_wmask(mem_0_5_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_6 (
    .RW0_addr(mem_0_6_RW0_addr),
    .RW0_clk(mem_0_6_RW0_clk),
    .RW0_wdata(mem_0_6_RW0_wdata),
    .RW0_rdata(mem_0_6_RW0_rdata),
    .RW0_en(mem_0_6_RW0_en),
    .RW0_wmode(mem_0_6_RW0_wmode),
    .RW0_wmask(mem_0_6_RW0_wmask)
  );
  split_bim_data_array_0_ext mem_0_7 (
    .RW0_addr(mem_0_7_RW0_addr),
    .RW0_clk(mem_0_7_RW0_clk),
    .RW0_wdata(mem_0_7_RW0_wdata),
    .RW0_rdata(mem_0_7_RW0_rdata),
    .RW0_en(mem_0_7_RW0_en),
    .RW0_wmode(mem_0_7_RW0_wmode),
    .RW0_wmask(mem_0_7_RW0_wmask)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0_1 = mem_0_1_RW0_rdata;
  assign RW0_rdata_0_2 = mem_0_2_RW0_rdata;
  assign RW0_rdata_0_3 = mem_0_3_RW0_rdata;
  assign RW0_rdata_0_4 = mem_0_4_RW0_rdata;
  assign RW0_rdata_0_5 = mem_0_5_RW0_rdata;
  assign RW0_rdata_0_6 = mem_0_6_RW0_rdata;
  assign RW0_rdata_0_7 = mem_0_7_RW0_rdata;
  assign _GEN_0 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_1 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_2 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_3 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_4 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_5 = {RW0_rdata_0_6,_GEN_4};
  assign RW0_rdata_0 = {RW0_rdata_0_7,_GEN_5};
  assign _GEN_6 = {RW0_rdata_0_1,RW0_rdata_0_0};
  assign _GEN_7 = {RW0_rdata_0_2,_GEN_0};
  assign _GEN_8 = {RW0_rdata_0_3,_GEN_1};
  assign _GEN_9 = {RW0_rdata_0_4,_GEN_2};
  assign _GEN_10 = {RW0_rdata_0_5,_GEN_3};
  assign _GEN_11 = {RW0_rdata_0_6,_GEN_4};
  assign RW0_rdata = {RW0_rdata_0_7,_GEN_5};
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata[0];
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
  assign mem_0_0_RW0_wmask = RW0_wmask[0];
  assign mem_0_1_RW0_addr = RW0_addr;
  assign mem_0_1_RW0_clk = RW0_clk;
  assign mem_0_1_RW0_wdata = RW0_wdata[1];
  assign mem_0_1_RW0_en = RW0_en;
  assign mem_0_1_RW0_wmode = RW0_wmode;
  assign mem_0_1_RW0_wmask = RW0_wmask[1];
  assign mem_0_2_RW0_addr = RW0_addr;
  assign mem_0_2_RW0_clk = RW0_clk;
  assign mem_0_2_RW0_wdata = RW0_wdata[2];
  assign mem_0_2_RW0_en = RW0_en;
  assign mem_0_2_RW0_wmode = RW0_wmode;
  assign mem_0_2_RW0_wmask = RW0_wmask[2];
  assign mem_0_3_RW0_addr = RW0_addr;
  assign mem_0_3_RW0_clk = RW0_clk;
  assign mem_0_3_RW0_wdata = RW0_wdata[3];
  assign mem_0_3_RW0_en = RW0_en;
  assign mem_0_3_RW0_wmode = RW0_wmode;
  assign mem_0_3_RW0_wmask = RW0_wmask[3];
  assign mem_0_4_RW0_addr = RW0_addr;
  assign mem_0_4_RW0_clk = RW0_clk;
  assign mem_0_4_RW0_wdata = RW0_wdata[4];
  assign mem_0_4_RW0_en = RW0_en;
  assign mem_0_4_RW0_wmode = RW0_wmode;
  assign mem_0_4_RW0_wmask = RW0_wmask[4];
  assign mem_0_5_RW0_addr = RW0_addr;
  assign mem_0_5_RW0_clk = RW0_clk;
  assign mem_0_5_RW0_wdata = RW0_wdata[5];
  assign mem_0_5_RW0_en = RW0_en;
  assign mem_0_5_RW0_wmode = RW0_wmode;
  assign mem_0_5_RW0_wmask = RW0_wmask[5];
  assign mem_0_6_RW0_addr = RW0_addr;
  assign mem_0_6_RW0_clk = RW0_clk;
  assign mem_0_6_RW0_wdata = RW0_wdata[6];
  assign mem_0_6_RW0_en = RW0_en;
  assign mem_0_6_RW0_wmode = RW0_wmode;
  assign mem_0_6_RW0_wmask = RW0_wmask[6];
  assign mem_0_7_RW0_addr = RW0_addr;
  assign mem_0_7_RW0_clk = RW0_clk;
  assign mem_0_7_RW0_wdata = RW0_wdata[7];
  assign mem_0_7_RW0_en = RW0_en;
  assign mem_0_7_RW0_wmode = RW0_wmode;
  assign mem_0_7_RW0_wmask = RW0_wmask[7];
endmodule
module btb_tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [19:0] RW0_wdata,
  output [19:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [19:0] mem_0_0_RW0_wdata;
  wire [19:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [19:0] RW0_rdata_0_0;
  wire [19:0] RW0_rdata_0;
  split_btb_tag_array_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module btb_data_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [47:0] RW0_wdata,
  output [47:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [5:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [47:0] mem_0_0_RW0_wdata;
  wire [47:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [47:0] RW0_rdata_0_0;
  wire [47:0] RW0_rdata_0;
  split_btb_data_array_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module counter_table_ext(
  input  [11:0] W0_addr,
  input         W0_clk,
  input  [3:0]  W0_data,
  input         W0_en,
  input  [11:0] R0_addr,
  input         R0_clk,
  output [3:0]  R0_data,
  input         R0_en
);
  wire [11:0] mem_0_0_W0_addr;
  wire  mem_0_0_W0_clk;
  wire [3:0] mem_0_0_W0_data;
  wire  mem_0_0_W0_en;
  wire [11:0] mem_0_0_R0_addr;
  wire  mem_0_0_R0_clk;
  wire [3:0] mem_0_0_R0_data;
  wire  mem_0_0_R0_en;
  wire [3:0] R0_data_0_0;
  wire [3:0] R0_data_0;
  split_counter_table_ext mem_0_0 (
    .W0_addr(mem_0_0_W0_addr),
    .W0_clk(mem_0_0_W0_clk),
    .W0_data(mem_0_0_W0_data),
    .W0_en(mem_0_0_W0_en),
    .R0_addr(mem_0_0_R0_addr),
    .R0_clk(mem_0_0_R0_clk),
    .R0_data(mem_0_0_R0_data),
    .R0_en(mem_0_0_R0_en)
  );
  assign R0_data_0_0 = mem_0_0_R0_data;
  assign R0_data_0 = R0_data_0_0;
  assign R0_data = mem_0_0_R0_data;
  assign mem_0_0_W0_addr = W0_addr;
  assign mem_0_0_W0_clk = W0_clk;
  assign mem_0_0_W0_data = W0_data;
  assign mem_0_0_W0_en = W0_en;
  assign mem_0_0_R0_addr = R0_addr;
  assign mem_0_0_R0_clk = R0_clk;
  assign mem_0_0_R0_en = R0_en;
endmodule
module l2_tlb_ram_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [44:0] RW0_wdata,
  output [44:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  wire [8:0] mem_0_0_RW0_addr;
  wire  mem_0_0_RW0_clk;
  wire [44:0] mem_0_0_RW0_wdata;
  wire [44:0] mem_0_0_RW0_rdata;
  wire  mem_0_0_RW0_en;
  wire  mem_0_0_RW0_wmode;
  wire [44:0] RW0_rdata_0_0;
  wire [44:0] RW0_rdata_0;
  split_l2_tlb_ram_ext mem_0_0 (
    .RW0_addr(mem_0_0_RW0_addr),
    .RW0_clk(mem_0_0_RW0_clk),
    .RW0_wdata(mem_0_0_RW0_wdata),
    .RW0_rdata(mem_0_0_RW0_rdata),
    .RW0_en(mem_0_0_RW0_en),
    .RW0_wmode(mem_0_0_RW0_wmode)
  );
  assign RW0_rdata_0_0 = mem_0_0_RW0_rdata;
  assign RW0_rdata_0 = RW0_rdata_0_0;
  assign RW0_rdata = mem_0_0_RW0_rdata;
  assign mem_0_0_RW0_addr = RW0_addr;
  assign mem_0_0_RW0_clk = RW0_clk;
  assign mem_0_0_RW0_wdata = RW0_wdata;
  assign mem_0_0_RW0_en = RW0_en;
  assign mem_0_0_RW0_wmode = RW0_wmode;
endmodule
module split_tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [21:0] RW0_wdata,
  output [21:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  reg [21:0] ram [0:63];
  reg [31:0] _RAND_0;
  wire [21:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [21:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [21:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[21:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
module split_array_0_0_ext(
  input  [8:0]  W0_addr,
  input         W0_clk,
  input  [63:0] W0_data,
  input         W0_en,
  input         W0_mask,
  input  [8:0]  R0_addr,
  input         R0_clk,
  output [63:0] R0_data,
  input         R0_en
);
  reg [63:0] ram [0:511];
  reg [63:0] _RAND_0;
  wire [63:0] ram_R_0_data;
  wire [8:0] ram_R_0_addr;
  wire [63:0] ram_W_0_data;
  wire [8:0] ram_W_0_addr;
  wire  ram_W_0_mask;
  wire  ram_W_0_en;
  wire  _GEN_0;
  wire [8:0] _GEN_1;
  reg [8:0] ram_R_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  ram_R_0_addr_en;
  wire  _GEN_2;
  wire  _GEN_3;
  wire [8:0] _GEN_4;
  wire [63:0] _GEN_5;
  assign ram_R_0_addr = ram_R_0_addr_pipe_0;
  assign ram_R_0_data = ram[ram_R_0_addr];
  assign ram_W_0_data = W0_data;
  assign ram_W_0_addr = W0_addr;
  assign ram_W_0_mask = W0_mask;
  assign ram_W_0_en = W0_en;
  assign R0_data = ram_R_0_data;
  assign _GEN_0 = R0_en;
  assign _GEN_1 = R0_addr;
  assign ram_R_0_addr_en = R0_en;
  assign _GEN_2 = W0_en;
  assign _GEN_3 = W0_mask;
  assign _GEN_4 = W0_addr;
  assign _GEN_5 = W0_data;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_R_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge W0_clk) begin
    if(ram_W_0_en & ram_W_0_mask) begin
      ram[ram_W_0_addr] <= ram_W_0_data;
    end
  end
  always @(posedge R0_clk) begin
    if (_GEN_0) begin
      ram_R_0_addr_pipe_0 <= R0_addr;
    end
  end
endmodule
module split_tag_array_0_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [20:0] RW0_wdata,
  output [20:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode,
  input         RW0_wmask
);
  reg [20:0] ram [0:63];
  reg [31:0] _RAND_0;
  wire [20:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [20:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [20:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[20:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
module split_dataArrayWay_0_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [63:0] RW0_wdata,
  output [63:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [63:0] ram [0:511];
  reg [63:0] _RAND_0;
  wire [63:0] ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire [63:0] ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [63:0] _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[63:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
module split_bim_data_array_0_ext(
  input  [8:0] RW0_addr,
  input        RW0_clk,
  input        RW0_wdata,
  output       RW0_rdata,
  input        RW0_en,
  input        RW0_wmode,
  input        RW0_wmask
);
  reg  ram [0:511];
  reg [31:0] _RAND_0;
  wire  ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire  ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = RW0_wmask;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = RW0_wmask;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
module split_btb_tag_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [19:0] RW0_wdata,
  output [19:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [19:0] ram [0:63];
  reg [31:0] _RAND_0;
  wire [19:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [19:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [19:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[19:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
module split_btb_data_array_ext(
  input  [5:0]  RW0_addr,
  input         RW0_clk,
  input  [47:0] RW0_wdata,
  output [47:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [47:0] ram [0:63];
  reg [63:0] _RAND_0;
  wire [47:0] ram_RW_0_r_0_data;
  wire [5:0] ram_RW_0_r_0_addr;
  wire [47:0] ram_RW_0_w_0_data;
  wire [5:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [47:0] _GEN_3;
  wire [5:0] _GEN_4;
  reg [5:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [5:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 64; initvar = initvar+1)
    ram[initvar] = _RAND_0[47:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
module split_counter_table_ext(
  input  [11:0] W0_addr,
  input         W0_clk,
  input  [3:0]  W0_data,
  input         W0_en,
  input  [11:0] R0_addr,
  input         R0_clk,
  output [3:0]  R0_data,
  input         R0_en
);
  reg [3:0] ram [0:4095];
  reg [31:0] _RAND_0;
  wire [3:0] ram_R_0_data;
  wire [11:0] ram_R_0_addr;
  wire [3:0] ram_W_0_data;
  wire [11:0] ram_W_0_addr;
  wire  ram_W_0_mask;
  wire  ram_W_0_en;
  wire  _GEN_0;
  wire [11:0] _GEN_1;
  reg [11:0] ram_R_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  ram_R_0_addr_en;
  wire  _GEN_2;
  wire  _GEN_3;
  wire [11:0] _GEN_4;
  wire [3:0] _GEN_5;
  assign ram_R_0_addr = ram_R_0_addr_pipe_0;
  assign ram_R_0_data = ram[ram_R_0_addr];
  assign ram_W_0_data = W0_data;
  assign ram_W_0_addr = W0_addr;
  assign ram_W_0_mask = 1'h1;
  assign ram_W_0_en = W0_en;
  assign R0_data = ram_R_0_data;
  assign _GEN_0 = R0_en;
  assign _GEN_1 = R0_addr;
  assign ram_R_0_addr_en = R0_en;
  assign _GEN_2 = W0_en;
  assign _GEN_3 = 1'h1;
  assign _GEN_4 = W0_addr;
  assign _GEN_5 = W0_data;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 4096; initvar = initvar+1)
    ram[initvar] = _RAND_0[3:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_R_0_addr_pipe_0 = _RAND_1[11:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge W0_clk) begin
    if(ram_W_0_en & ram_W_0_mask) begin
      ram[ram_W_0_addr] <= ram_W_0_data;
    end
  end
  always @(posedge R0_clk) begin
    if (_GEN_0) begin
      ram_R_0_addr_pipe_0 <= R0_addr;
    end
  end
endmodule
module split_l2_tlb_ram_ext(
  input  [8:0]  RW0_addr,
  input         RW0_clk,
  input  [44:0] RW0_wdata,
  output [44:0] RW0_rdata,
  input         RW0_en,
  input         RW0_wmode
);
  reg [44:0] ram [0:511];
  reg [63:0] _RAND_0;
  wire [44:0] ram_RW_0_r_0_data;
  wire [8:0] ram_RW_0_r_0_addr;
  wire [44:0] ram_RW_0_w_0_data;
  wire [8:0] ram_RW_0_w_0_addr;
  wire  ram_RW_0_w_0_mask;
  wire  ram_RW_0_w_0_en;
  wire  _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire [44:0] _GEN_3;
  wire [8:0] _GEN_4;
  reg [8:0] ram_RW_0_addr_pipe_0;
  reg [31:0] _RAND_1;
  wire  _GEN_6;
  wire  ram_RW_0_addr_en;
  wire [8:0] _GEN_5;
  assign ram_RW_0_r_0_addr = ram_RW_0_addr_pipe_0;
  assign ram_RW_0_r_0_data = ram[ram_RW_0_r_0_addr];
  assign ram_RW_0_w_0_data = RW0_wdata;
  assign ram_RW_0_w_0_addr = RW0_addr;
  assign ram_RW_0_w_0_mask = 1'h1;
  assign ram_RW_0_w_0_en = RW0_en & RW0_wmode;
  assign RW0_rdata = ram_RW_0_r_0_data;
  assign _GEN_0 = RW0_en;
  assign _GEN_1 = RW0_wmode;
  assign _GEN_2 = 1'h1;
  assign _GEN_3 = RW0_wdata;
  assign _GEN_4 = RW0_addr;
  assign _GEN_6 = ~ RW0_wmode;
  assign ram_RW_0_addr_en = RW0_en & _GEN_6;
  assign _GEN_5 = RW0_addr;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    ram[initvar] = _RAND_0[44:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ram_RW_0_addr_pipe_0 = _RAND_1[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge RW0_clk) begin
    if(ram_RW_0_w_0_en & ram_RW_0_w_0_mask) begin
      ram[ram_RW_0_w_0_addr] <= ram_RW_0_w_0_data;
    end
    if (ram_RW_0_addr_en) begin
      ram_RW_0_addr_pipe_0 <= RW0_addr;
    end
  end
endmodule
