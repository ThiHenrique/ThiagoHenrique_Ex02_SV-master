module Numero1 (input logic swap,
 input logic enable,
 input logic clock,
 output logic[3:0] upCount,
 output logic[3:0] downCount);

always_ff @(posedge clock)
    if (enable)
        if (swap) begin
            upCount <= downCount;
            downCount <= upCount;
        end 
		else begin
            upCount <= upCount + 4'd1;
            downCount <= downCount - 4'd1;
		end
    else begin
        upCount <= upCount;
        downCount <= downCount;
    end
endmodule 
