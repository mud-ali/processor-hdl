module testbench;    
    reg [7:0] a_vec;
    
    wire [7:0] negative_a;

    negator ng(
        a_vec,
        negative_a
    );

    initial begin
        a_vec = 8'b00101010;

        #10;
        $display("Negative of %b = %b", a_vec, negative_a);

        $finish;
    end
    
endmodule