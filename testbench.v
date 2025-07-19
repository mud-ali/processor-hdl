module testbench;
    reg a, b, cin;
    wire sum, carry_out;
    
    fulladder test_unit (
        .a(a),
        .b(b),
        .carry_in(cin),
        .sum(sum),
        .carry_out(carry_out)
    );
    
    initial begin
        a = 1;
        b = 1;
        cin = 0;
        
        #10;
        $display("Output: carry=%b, sum=%b", carry_out, sum);
        
        $finish;
    end
    
endmodule