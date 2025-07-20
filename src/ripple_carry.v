module ripple_carry_adder(
    input[7:0] a,
    input[7:0] b,
    input cin,
    output[7:0] sum,
    output cout
);
    wire carry[7:0];

    fulladder fa_0(
        a[0],
        b[0],
        cin,
        sum[0],
        carry[0]
    );

    generate
        genvar i;
        for (i=1; i<8; i=i+1) begin : addhigherbits
            fulladder fa(
                a[i],
                b[i],
                carry[i-1],
                sum[i],
                carry[i]
            );
        end
    endgenerate

    assign cout = carry[7];
endmodule