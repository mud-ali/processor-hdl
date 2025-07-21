module dec2bin(
    input[8:0] decimal,
    output[3:0] binary
);
    assign binary[3] = decimal[8] | decimal[7];
    assign binary[2] = |decimal[6:3];
    assign binary[1] = decimal[6] | decimal[5] | decimal[2] | decimal[1];
    assign binary[0] = decimal[0] | decimal[2] | decimal[4] | decimal[6] | decimal[8];

endmodule