module uart_transmitter(
    input clk,
    input rst,
    input enable,
    input[7:0] data_in,
    output busy,
    output bit_out
);

    localparam IDLE = 4'd0;
    localparam START_TRANSMIT = 4'd1;
    localparam TRANSMIT_BYTE = 4'd2;
    localparam END_TRANSMIT = 4'd3;

    reg[3:0] state = IDLE;
    reg tx_busy;
    reg tx_bit;
    reg[3:0] bit_counter = 4'd0;

    always @ (posedge clk or posedge rst)
    begin
        if (rst)
        begin
            tx_busy <= 0;
            tx_bit <= 1;
        end else
        begin
            case (state)
                IDLE:
                begin
                    tx_busy <= 0;
                    tx_bit <= 1;

                    if (enable)
                        state <= START_TRANSMIT;
                    else
                        state <= IDLE;
                end

                START_TRANSMIT:
                begin
                    tx_busy <= 1;
                    tx_bit <= 0;

                    state <= TRANSMIT_BYTE;
                end

                TRANSMIT_BYTE:
                begin
                    if (bit_counter >= 4'd8)
                    begin
                        tx_bit <= 1'b1;
                        bit_counter <= 4'd0;
                        state <= IDLE;
                    end else
                    begin
                        tx_bit <= data_in[bit_counter];
                        bit_counter <= bit_counter + 1;
                    end

                end
            endcase
        end
    end

    assign busy = tx_busy;
    assign bit_out = tx_bit;
    
endmodule
