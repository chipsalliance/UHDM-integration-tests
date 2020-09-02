package pkg1;
    typedef struct packed {
        logic [7:0] first;
    } struct1;
endpackage

package pkg2;
    typedef struct packed {
        logic [6:0] second;
    } struct1;
endpackage

module dut;
    typedef struct packed {
        logic [5:0] third;
    } struct2;

    pkg1::struct1 var1;
    pkg2::struct1 var2;
    struct2 var3;

    assign var1.first = 255;
    assign var2.second = 127;
    assign var3.third = 63;
endmodule;
