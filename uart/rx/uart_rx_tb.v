`timescale 1ps/1ps

module uart_rx_tb();

    reg clk = 0;
    reg rst;
    reg rx_bit_in;
    wire[7:0] rx_data;
    wire rx_received;

    // clock gen
    integer i;
    initial begin
        for (i = 0; i < 128; i++)
            #1 clk = ~clk;
    end

    uart_receiver rx(
        .clk(clk),
        .rst(rst),
        .bit_in(rx_bit_in),
        .data_out(rx_data),
        .received_byte(rx_received)
    );

    initial begin
        // pulse reset signal
        rst = 1;
        rx_bit_in = 1;
        #1
        rst = 0;
        #5

        // set start bit
        rx_bit_in = 0;
        #2

        // test data 1
        rx_bit_in = 1;
        #2
        rx_bit_in = 0;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 0;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 0;
        #2
        rx_bit_in = 0;
        #2

        // set end bit
        rx_bit_in = 1;
        #2

        // set start bit
        rx_bit_in = 0;
        #2

        // test data 2
        rx_bit_in = 0;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 0;
        #2
        rx_bit_in = 0;
        #2
        rx_bit_in = 1;
        #2
        rx_bit_in = 1;
        
        // set end bit
        #10
        rst = 1;
    end

    initial begin
        $dumpfile("uart_rx_tb.vcd");
        $dumpvars(0, uart_rx_tb);
    end
    
endmodule
