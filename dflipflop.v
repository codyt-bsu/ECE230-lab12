module dff(
    input Default,
    input D,
    input clk,
    input Reset,
    output reg Q,
);

    initial begin
        Q <= Default;
    end

    always @(posedge Clock)
        Q <= D;
    always @(posedge Reset) 
        Q <= Default
endmodule