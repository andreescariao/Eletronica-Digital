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
parameter [2:0] s5 = 3'h5;
parameter [2:0] s6 = 3'h6;

reg [2:0] current_state, next_state;
//Output Logic
assign out = (current_state == s3 || current_state == s6) ? 1 : 0;

//Next State Logic
always @(current_state or in)
begin
case(current_state)
s0: next_state = in ? s1 : s4;
s1: next_state = in ? s1 : s2;
s2: next_state = in ? s3 : s4;
s3: next_state = in ? s1 : s6;
s4: next_state = in ? s5 : s4;
s5: next_state = in ? s1 : s6;
s6: next_state = in ? s3 : s4;
default next_state = s0;
endcase
end

//Update State Register
always @(posedge clk)
begin
current_state <= clr==0 ? s0 : next_state;
end

endmodule
