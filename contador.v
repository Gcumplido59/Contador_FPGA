module contador(
	input clk,rst,enable, direccion,
	output reg [3:0] count,
	output reg [3:0] data_in
);

always @(posedge clk or posedge rst)

	begin
	
		if(rst)
			count<=0;
		
		else if(enable)	
			if (direccion)
				count<=count-1;
			else
				count<=count+1;
		else
			count<=count;
			
	end
endmodule