`timescale 1ps/1ps

module uart_tx_tb();

    reg clk = 0;
    reg rst;
    reg[7:0] tx_data;
    reg tx_enable;
    wire tx_busy;
    wire tx_out_bit;

    // clock gen
    integer i;
    initial begin
        for (i = 0; i < 128; i++)
            #1 clk = ~clk;
    end

    uart_transmitter tx(
        .clk(clk),
        .rst(rst),
        .enable(tx_enable),
        .data_in(tx_data),
        .bit_out(tx_out_bit),
        .busy(tx_busy)
    );

    initial begin
        tx_data = 8'd0;
        tx_enable = 1'b0;
        #5
        tx_data = 8'b01100101;
        tx_enable = 1'b1;
        #20
        tx_data = 8'b00111110;
        #17
        tx_enable = 1'b0;
    end

    initial begin
        // pulse reset signal
        rst = 1;
        #1
        rst = 0;

        $dumpfile("uart_tx_tb.vcd");
        $dumpvars(0, uart_tx_tb);
    end

endmodule
