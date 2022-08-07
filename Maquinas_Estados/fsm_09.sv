module fsm(
input in,
input clk,
input clr,
output out);

parameter [2:0] s0 = 3'h0;
parameter [2:0] s1 = 3'h1;
parameter [2:0] s2 = 3'h2;
parameter [2:0] s3 = 3'h3;
parameter [2:0] s4 = 3'h4;

reg [2:0] current_state, next_state;
reg out;

//Next State Logic
always @(current_state or in)
begin
case(current_state)
s0: next_state = in ? s3 : s1;
s1: next_state = in ? s3 : s2;
s2: next_state = in ? s3 : s2;
s3: next_state = in ? s3 : s4;
s4: next_state = in ? s3 : s2;
default next_state = s0;
endcase
end

//Output Logic
always @(current_state or in)
begin
case(current_state)
s0: out <= 0;
s1: out <= 0;
s2: out <= in ? 1 : 0;
s3: out <= 0;
s4: out <= in ? 1 : 0;
default out <= 0;
endcase
end

//Update State Register
always @(posedge clk)
begin
current_state <= clr==0 ? s0 : next_state;
end

endmodule
