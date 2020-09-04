package pkg1;
    typedef enum logic[4:0] {
        FIRST  = 5'b00111,
        SECOND = 5'b11100
    } enum1;
endpackage

package pkg2;
    typedef enum logic[5:0] {
        THIRD  = 6'b000111,
        FOURTH = 6'b111000
    } enum1;
endpackage

package pkg3;
    typedef enum logic[6:0] {
        FIFTH = 7'b0011100,
        SIXTH = 7'b1100011
    } enum2;
endpackage

module dut;  
    typedef enum logic[7:0] {
        SEVENTH = 8'b01011010,
        EIGHTH  = 8'b11010011
    } enum3;

   import pkg3::*;

    pkg1::enum1 var1;
    pkg2::enum1 var2;
    enum2 var3;
    enum3 var4;

    assign var1 = pkg1::FIRST;
    assign var2 = pkg2::FOURTH;
    assign var3 = SIXTH;
    assign var4 = SEVENTH;
endmodule;
