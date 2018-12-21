
`timescale 1 ns / 1 ps

    module p1_normal_jtag_v1_0 #
    (
        // Users to add parameters here

        // User parameters ends
        // Do not modify the parameters beyond this line


        // Parameters of Axi Master Bus Interface MMIO_AXI
        parameter  C_MMIO_AXI_TARGET_SLAVE_BASE_ADDR    = 32'h40000000,
        parameter integer C_MMIO_AXI_BURST_LEN  = 16,
        parameter integer C_MMIO_AXI_ID_WIDTH   = 4,
        parameter integer C_MMIO_AXI_ADDR_WIDTH = 32,
        parameter integer C_MMIO_AXI_DATA_WIDTH = 32,
        parameter integer C_MMIO_AXI_AWUSER_WIDTH   = 0,
        parameter integer C_MMIO_AXI_ARUSER_WIDTH   = 0,
        parameter integer C_MMIO_AXI_WUSER_WIDTH    = 0,
        parameter integer C_MMIO_AXI_RUSER_WIDTH    = 0,
        parameter integer C_MMIO_AXI_BUSER_WIDTH    = 0,
        
        // Parameters of Axi Master Bus Interface MEM 
        parameter  C_MEM_AXI_TARGET_SLAVE_BASE_ADDR    = 32'h40000000,
        parameter integer C_MEM_AXI_BURST_LEN    = 16,
        parameter integer C_MEM_AXI_ID_WIDTH    = 4,
        parameter integer C_MEM_AXI_ADDR_WIDTH    = 32,
        parameter integer C_MEM_AXI_DATA_WIDTH    = 32,
        parameter integer C_MEM_AXI_AWUSER_WIDTH    = 0,
        parameter integer C_MEM_AXI_ARUSER_WIDTH    = 0,
        parameter integer C_MEM_AXI_WUSER_WIDTH    = 0,
        parameter integer C_MEM_AXI_RUSER_WIDTH    = 0,
        parameter integer C_MEM_AXI_BUSER_WIDTH    = 0
    )
    (
        // Users to add ports here

        // rocket i/o signals
        input wire clock,
        input wire reset,
        input wire [1:0] interrupts,
        input wire debug_systemjtag_reset,
        input wire debug_systemjtag_jtag_TCK,
        input wire debug_systemjtag_jtag_TMS,
        input wire debug_systemjtag_jtag_TDI,
        output wire debug_systemjtag_jtag_TDO_data,

        // User ports ends
        // Do not modify the ports beyond this line


        // Ports of Axi Master Bus Interface MMIO_AXI
        input wire  mmio_axi_init_axi_txn,
        output wire  mmio_axi_txn_done,
        output wire  mmio_axi_error,
        input wire  mmio_axi_aclk,
        input wire  mmio_axi_aresetn,
        output wire [C_MMIO_AXI_ID_WIDTH-1 : 0] mmio_axi_awid,
        output wire [C_MMIO_AXI_ADDR_WIDTH-1 : 0] mmio_axi_awaddr,
        output wire [7 : 0] mmio_axi_awlen,
        output wire [2 : 0] mmio_axi_awsize,
        output wire [1 : 0] mmio_axi_awburst,
        output wire  mmio_axi_awlock,
        output wire [3 : 0] mmio_axi_awcache,
        output wire [2 : 0] mmio_axi_awprot,
        output wire [3 : 0] mmio_axi_awqos,
        output wire [C_MMIO_AXI_AWUSER_WIDTH-1 : 0] mmio_axi_awuser,
        output wire  mmio_axi_awvalid,
        input wire  mmio_axi_awready,
        output wire [C_MMIO_AXI_DATA_WIDTH-1 : 0] mmio_axi_wdata,
        output wire [C_MMIO_AXI_DATA_WIDTH/8-1 : 0] mmio_axi_wstrb,
        output wire  mmio_axi_wlast,
        output wire [C_MMIO_AXI_WUSER_WIDTH-1 : 0] mmio_axi_wuser,
        output wire  mmio_axi_wvalid,
        input wire  mmio_axi_wready,
        input wire [C_MMIO_AXI_ID_WIDTH-1 : 0] mmio_axi_bid,
        input wire [1 : 0] mmio_axi_bresp,
        input wire [C_MMIO_AXI_BUSER_WIDTH-1 : 0] mmio_axi_buser,
        input wire  mmio_axi_bvalid,
        output wire  mmio_axi_bready,
        output wire [C_MMIO_AXI_ID_WIDTH-1 : 0] mmio_axi_arid,
        output wire [C_MMIO_AXI_ADDR_WIDTH-1 : 0] mmio_axi_araddr,
        output wire [7 : 0] mmio_axi_arlen,
        output wire [2 : 0] mmio_axi_arsize,
        output wire [1 : 0] mmio_axi_arburst,
        output wire  mmio_axi_arlock,
        output wire [3 : 0] mmio_axi_arcache,
        output wire [2 : 0] mmio_axi_arprot,
        output wire [3 : 0] mmio_axi_arqos,
        output wire [C_MMIO_AXI_ARUSER_WIDTH-1 : 0] mmio_axi_aruser,
        output wire  mmio_axi_arvalid,
        input wire  mmio_axi_arready,
        input wire [C_MMIO_AXI_ID_WIDTH-1 : 0] mmio_axi_rid,
        input wire [C_MMIO_AXI_DATA_WIDTH-1 : 0] mmio_axi_rdata,
        input wire [1 : 0] mmio_axi_rresp,
        input wire  mmio_axi_rlast,
        input wire [C_MMIO_AXI_RUSER_WIDTH-1 : 0] mmio_axi_ruser,
        input wire  mmio_axi_rvalid,
        output wire  mmio_axi_rready,

        // Ports of Axi Master Bus Interface MEM_AXI
        input wire  mem_axi_init_axi_txn,
        output wire  mem_axi_txn_done,
        output wire  mem_axi_error,
        input wire  mem_axi_aclk,
        input wire  mem_axi_aresetn,
        output wire [4-1 : 0] mem_axi_awid, // C_MEM_AXI_ID_WIDTH
        output wire [C_MEM_AXI_ADDR_WIDTH-1 : 0] mem_axi_awaddr,
        output wire [7 : 0] mem_axi_awlen,
        output wire [2 : 0] mem_axi_awsize,
        output wire [1 : 0] mem_axi_awburst,
        output wire  mem_axi_awlock,
        output wire [3 : 0] mem_axi_awcache,
        output wire [2 : 0] mem_axi_awprot,
        output wire [3 : 0] mem_axi_awqos,
        output wire [C_MEM_AXI_AWUSER_WIDTH-1 : 0] mem_axi_awuser,
        output wire  mem_axi_awvalid,
        input wire  mem_axi_awready,
        output wire [C_MEM_AXI_DATA_WIDTH-1 : 0] mem_axi_wdata,
        output wire [C_MEM_AXI_DATA_WIDTH/8-1 : 0] mem_axi_wstrb,
        output wire  mem_axi_wlast,
        output wire [C_MEM_AXI_WUSER_WIDTH-1 : 0] mem_axi_wuser,
        output wire  mem_axi_wvalid,
        input wire  mem_axi_wready,
        input wire [4-1 : 0] mem_axi_bid, // C_MEM_AXI_ID_WIDTH
        input wire [1 : 0] mem_axi_bresp,
        input wire [C_MEM_AXI_BUSER_WIDTH-1 : 0] mem_axi_buser,
        input wire  mem_axi_bvalid,
        output wire  mem_axi_bready,
        output wire [4-1 : 0] mem_axi_arid, // C_MEM_AXI_ID_WIDTH
        output wire [C_MEM_AXI_ADDR_WIDTH-1 : 0] mem_axi_araddr,
        output wire [7 : 0] mem_axi_arlen,
        output wire [2 : 0] mem_axi_arsize,
        output wire [1 : 0] mem_axi_arburst,
        output wire  mem_axi_arlock,
        output wire [3 : 0] mem_axi_arcache,
        output wire [2 : 0] mem_axi_arprot,
        output wire [3 : 0] mem_axi_arqos,
        output wire [C_MEM_AXI_ARUSER_WIDTH-1 : 0] mem_axi_aruser,
        output wire  mem_axi_arvalid,
        input wire  mem_axi_arready,
        input wire [4-1 : 0] mem_axi_rid, // C_MEM_AXI_ID_WIDTH
        input wire [C_MEM_AXI_DATA_WIDTH-1 : 0] mem_axi_rdata,
        input wire [1 : 0] mem_axi_rresp,
        input wire  mem_axi_rlast,
        input wire [C_MEM_AXI_RUSER_WIDTH-1 : 0] mem_axi_ruser,
        input wire  mem_axi_rvalid,
        output wire  mem_axi_rready
    );


    // Add user logic here

    // rocket internal signals
    wire [10:0] debug_systemjtag_mfr_id;

    // rocket unused outputs
    wire debug_systemjtag_jtag_TDO_driven;
    wire debug_ndreset;
    wire debug_dmactive;

    P1System i_P1System (
        .clock                           (clock                           ),
        .reset                           (reset                           ),
        .interrupts                      (interrupts),
        .debug_systemjtag_jtag_TCK       (debug_systemjtag_jtag_TCK       ),
        .debug_systemjtag_jtag_TMS       (debug_systemjtag_jtag_TMS       ),
        .debug_systemjtag_jtag_TDI       (debug_systemjtag_jtag_TDI       ),
        .debug_systemjtag_jtag_TDO_data  (debug_systemjtag_jtag_TDO_data  ),
        .debug_systemjtag_jtag_TDO_driven(debug_systemjtag_jtag_TDO_driven),
        .debug_systemjtag_reset          (debug_systemjtag_reset          ),
        .debug_systemjtag_mfr_id         (debug_systemjtag_mfr_id         ),
        .debug_ndreset                   (debug_ndreset                   ),
        .debug_dmactive                  (debug_dmactive                  ),
        .mem_axi4_0_aw_ready             (mem_axi_awready             ),
        .mem_axi4_0_aw_valid             (mem_axi_awvalid             ),
        .mem_axi4_0_aw_bits_id           (mem_axi_awid           ),
        .mem_axi4_0_aw_bits_addr         (mem_axi_awaddr         ),
        .mem_axi4_0_aw_bits_len          (mem_axi_awlen          ),
        .mem_axi4_0_aw_bits_size         (mem_axi_awsize         ),
        .mem_axi4_0_aw_bits_burst        (mem_axi_awburst        ),
        .mem_axi4_0_aw_bits_lock         (mem_axi_awlock         ),
        .mem_axi4_0_aw_bits_cache        (mem_axi_awcache        ),
        .mem_axi4_0_aw_bits_prot         (mem_axi_awprot         ),
        .mem_axi4_0_aw_bits_qos          (mem_axi_awqos          ),
        .mem_axi4_0_w_ready              (mem_axi_wready              ),
        .mem_axi4_0_w_valid              (mem_axi_wvalid              ),
        .mem_axi4_0_w_bits_data          (mem_axi_wdata          ),
        .mem_axi4_0_w_bits_strb          (mem_axi_wstrb          ),
        .mem_axi4_0_w_bits_last          (mem_axi_wlast          ),
        .mem_axi4_0_b_ready              (mem_axi_bready              ),
        .mem_axi4_0_b_valid              (mem_axi_bvalid              ),
        .mem_axi4_0_b_bits_id            (mem_axi_bid            ),
        .mem_axi4_0_b_bits_resp          (mem_axi_bresp          ),
        .mem_axi4_0_ar_ready             (mem_axi_arready             ),
        .mem_axi4_0_ar_valid             (mem_axi_arvalid             ),
        .mem_axi4_0_ar_bits_id           (mem_axi_arid           ),
        .mem_axi4_0_ar_bits_addr         (mem_axi_araddr         ),
        .mem_axi4_0_ar_bits_len          (mem_axi_arlen          ),
        .mem_axi4_0_ar_bits_size         (mem_axi_arsize         ),
        .mem_axi4_0_ar_bits_burst        (mem_axi_arburst        ),
        .mem_axi4_0_ar_bits_lock         (mem_axi_arlock         ),
        .mem_axi4_0_ar_bits_cache        (mem_axi_arcache        ),
        .mem_axi4_0_ar_bits_prot         (mem_axi_arprot         ),
        .mem_axi4_0_ar_bits_qos          (mem_axi_arqos          ),
        .mem_axi4_0_r_ready              (mem_axi_rready              ),
        .mem_axi4_0_r_valid              (mem_axi_rvalid              ),
        .mem_axi4_0_r_bits_id            (mem_axi_rid            ),
        .mem_axi4_0_r_bits_data          (mem_axi_rdata          ),
        .mem_axi4_0_r_bits_resp          (mem_axi_rresp          ),
        .mem_axi4_0_r_bits_last          (mem_axi_rlast          ),
        .mmio_axi4_0_aw_ready            (mmio_axi_awready            ),
        .mmio_axi4_0_aw_valid            (mmio_axi_awvalid            ),
        .mmio_axi4_0_aw_bits_id          (mmio_axi_awid          ),
        .mmio_axi4_0_aw_bits_addr        (mmio_axi_awaddr        ),
        .mmio_axi4_0_aw_bits_len         (mmio_axi_awlen         ),
        .mmio_axi4_0_aw_bits_size        (mmio_axi_awsize        ),
        .mmio_axi4_0_aw_bits_burst       (mmio_axi_awburst       ),
        .mmio_axi4_0_aw_bits_lock        (mmio_axi_awlock        ),
        .mmio_axi4_0_aw_bits_cache       (mmio_axi_awcache       ),
        .mmio_axi4_0_aw_bits_prot        (mmio_axi_awprot        ),
        .mmio_axi4_0_aw_bits_qos         (mmio_axi_awqos         ),
        .mmio_axi4_0_w_ready             (mmio_axi_wready             ),
        .mmio_axi4_0_w_valid             (mmio_axi_wvalid             ),
        .mmio_axi4_0_w_bits_data         (mmio_axi_wdata         ),
        .mmio_axi4_0_w_bits_strb         (mmio_axi_wstrb         ),
        .mmio_axi4_0_w_bits_last         (mmio_axi_wlast         ),
        .mmio_axi4_0_b_ready             (mmio_axi_bready             ),
        .mmio_axi4_0_b_valid             (mmio_axi_bvalid             ),
        .mmio_axi4_0_b_bits_id           (mmio_axi_bid           ),
        .mmio_axi4_0_b_bits_resp         (mmio_axi_bresp         ),
        .mmio_axi4_0_ar_ready            (mmio_axi_arready            ),
        .mmio_axi4_0_ar_valid            (mmio_axi_arvalid            ),
        .mmio_axi4_0_ar_bits_id          (mmio_axi_arid          ),
        .mmio_axi4_0_ar_bits_addr        (mmio_axi_araddr        ),
        .mmio_axi4_0_ar_bits_len         (mmio_axi_arlen         ),
        .mmio_axi4_0_ar_bits_size        (mmio_axi_arsize        ),
        .mmio_axi4_0_ar_bits_burst       (mmio_axi_arburst       ),
        .mmio_axi4_0_ar_bits_lock        (mmio_axi_arlock        ),
        .mmio_axi4_0_ar_bits_cache       (mmio_axi_arcache       ),
        .mmio_axi4_0_ar_bits_prot        (mmio_axi_arprot        ),
        .mmio_axi4_0_ar_bits_qos         (mmio_axi_arqos         ),
        .mmio_axi4_0_r_ready             (mmio_axi_rready             ),
        .mmio_axi4_0_r_valid             (mmio_axi_rvalid             ),
        .mmio_axi4_0_r_bits_id           (mmio_axi_rid           ),
        .mmio_axi4_0_r_bits_data         (mmio_axi_rdata         ),
        .mmio_axi4_0_r_bits_resp         (mmio_axi_rresp         ),
        .mmio_axi4_0_r_bits_last         (mmio_axi_rlast         )
    );

    // For now, use SiFive manufacturing IDCODE, so that OpenOCD can recognize it
    assign debug_systemjtag_mfr_id = 11'h489;


    // User logic ends

    endmodule
