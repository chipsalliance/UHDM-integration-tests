module top #(
    parameter dims_p              = 2,
    parameter int cord_markers_pos_p[dims_p:0] = '{ 5, 4, 0 }
) (
);
    typedef struct packed {                 
        logic [cord_markers_pos_p[dims_p]-1:0 ]  cord;     
    } bsg_wormhole_router_header_s;

    bsg_wormhole_router_header_s hdr;

    wire [7:0] fifo_data_lo;
    assign hdr = fifo_data_lo[$bits(bsg_wormhole_router_header_s)-1:0];

endmodule
