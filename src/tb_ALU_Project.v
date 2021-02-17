module tb_ALU_Project;
reg  start,  clk, reset_n;
reg [2:0] op;
reg [7:0] a, b;
wire done;
wire [15:0] result;
ALU_Project alu_dut ( start,  clk, reset_n, op, a, b, done, result);
initial 
begin
clk = 1'b0; start = 1'b1; reset_n = 1'b0; op = 3'b000; a = 8'd2; b = 8'd5;
#100	 reset_n = 1'b1; op = 3'b000; a = 8'd2; b = 8'd5;
#100	 op = 3'b001; a = 8'd2; b = 8'd5;
#100	 op = 3'b010; a = 8'd2; b = 8'd5;
#100	 op = 3'b011; a = 8'd2; b = 8'd5;
#100	 op = 3'b100; a = 8'd2; b = 8'd5;
#100	 op = 3'b101; a = 8'd2; b = 8'd5;
end
always
#50 clk = !clk;
endmodule
