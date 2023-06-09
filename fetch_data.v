`timescale 1ns / 1ps

module VEDA_data(clk, rst, addr, mode, write_en ,write_data, out_wire);

    input clk, rst;
    input write_en;
    input mode;
    input [31:0] write_data;
    input [31:0] addr;
    output signed [31:0] out_wire;

    reg [31:0] veda [0:255];
    reg [31:0] out;
    integer i;
    
    always @(posedge rst) begin
        for(i = 0; i < 256; i=i+1) begin
            veda[i] <= 0;
        end   
 
        // Uncomment any one section of the array below

        // veda[0] <= 67;
        // veda[1] <= 24;
        // veda[2] <= 15;
        // veda[3] <= 12;
        // veda[4] <= 2;
        // veda[5] <= 0;

        // veda[0] <= 5;
        // veda[1] <= 4;
        // veda[2] <= 3;
        // veda[3] <= 2;
        // veda[4] <= 1;
        // veda[5] <= 0;

        // veda[0] <= 3432;
        // veda[1] <= 433;
        // veda[2] <= 220;
        // veda[3] <= 122;
        // veda[4] <= 0;
        // veda[5] <= 23;

        // veda[0] <= 340000;
        // veda[1] <= 5433;
        // veda[2] <= 220;
        // veda[3] <= 0;
        // veda[4] <= 23;
        // veda[5] <= 33;

        veda[0] <= 210;
        veda[1] <= 6;
        veda[2] <= 7;
        veda[3] <= 19;
        veda[4] <= 22;
        veda[5] <= 144;



        veda[6] <= 32'b000000_00000_00000_00000_00000_000110; // array sizes
    end
     

    always @(posedge clk) begin
        if(mode==0 && write_en==1) begin
            veda[addr] <= write_data;
        end
    end

    assign out_wire = veda[addr];
endmodule