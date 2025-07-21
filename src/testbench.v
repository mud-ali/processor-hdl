module testbench;    
    reg [8:0] a_vec;
    
    wire [3:0] binary;

    dec2bin db(
        a_vec,
        binary
    );

    initial begin
        a_vec = 9'b100000000;

        #10;
        $display("binary of %b = %b", a_vec, binary);

        $finish;
    end
    
endmodule