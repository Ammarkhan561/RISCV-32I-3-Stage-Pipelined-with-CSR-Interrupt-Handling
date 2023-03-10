module program_counter (
	input  logic 		clk,rst,Stall,
	input  logic [31:0] PC,
	output logic [31:0] Addr
);


	 always_ff @ (posedge clk , posedge rst) begin
	 	if (rst) 
	   		Addr <= 32'd0;
	 	else if( ~Stall )
			Addr <= PC;
	end	
endmodule
