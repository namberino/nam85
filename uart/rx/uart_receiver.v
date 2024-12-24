module uart_receiver (
    input clk,
    input rst,
    input bit_in,
    output[7:0] data_out,
    output received_byte
);

    reg[7:0] shift_reg;
    reg[3:0] bit_counter = 0;
    wire[7:0] output_next;
    reg received_data;
    reg start_bit_on;

    always @ (posedge clk or posedge rst)
    begin
        if (rst)
        begin
            shift_reg <= 0;
            received_data <= 0;
            bit_counter <= 0;
            start_bit_on <= 0;
        end else
        begin
            if (received_data)
            begin
                bit_counter <= 0;
                received_data <= 0;
                shift_reg <= 0;
                start_bit_on <= 0;
            end else if (start_bit_on)
            begin
                shift_reg <= output_next;
                bit_counter <= bit_counter + 1'b1;
            end else
            begin
                if (bit_in == 0)
                    start_bit_on <= 1;
            end
        end
    end

    always @ (negedge clk)
    begin
        if (bit_counter >= 4'd8)
            received_data <= 1;
    end

    assign output_next = {shift_reg[6:0], bit_in};
    assign data_out = shift_reg;
    assign received_byte = received_data;
    
endmodule
