module testbench;    
    reg [7:0] a_vec, b_vec;
    reg cin;
    wire [7:0] sum_vec;
    wire cout;

    ripple_carry_adder test_unit (
        .a(a_vec),
        .b(b_vec),
        .cin(cin),
        .sum(sum_vec),
        .cout(cout)
    );

    initial begin
        a_vec = 8'b00101010;
        b_vec = 8'b11110111;
        //should b 10100001
        cin = 1'b0;

        #10;
        $display("Output: carry=%b, sum=%b", cout, sum_vec);

        $finish;
    end
    
endmodule