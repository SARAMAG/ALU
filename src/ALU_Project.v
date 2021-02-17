module ALU_Project (start,  clk, reset_n, op, a, b, done, result);
input start,  clk, reset_n;
input [2:0] op;
input [7:0] a, b;
output reg done;
output reg [15:0] result;

parameter NOP = 3'b000;
parameter Add = 3'b001;
parameter And = 3'b010;
parameter XOR = 3'b011;
parameter Mul = 3'b100;


always@ (posedge clk)
if (!reset_n)
begin 
	done <= 1'b0;
	result <= 0;
end

else if (reset_n & start)
begin 
	case (op)
	NOP: begin 	result = result; done = 1'b1; 	end
	Add: begin 	result = a + b; done = 1'b1; 	end 
	And: begin 	result = a & b; done = 1'b1; 	end
	XOR: begin 	result = a ^ b; done = 1'b1; 	end
	Mul: begin 	result = a * b; done = 1'b1; 	end
	default: begin 	result = result; done = 1'b0; 	end
	endcase 
end
endmodule 

