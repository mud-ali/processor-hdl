module negator(
    input[7:0] value,
    output[7:0] out
);

    wire[7:0] opposite;
    reg tmp;

    assign opposite = ~value;
    ripple_carry_adder rca(
        opposite,
        8'b00000001,
        1'b0,
        out,
        tmp
    );

endmodule