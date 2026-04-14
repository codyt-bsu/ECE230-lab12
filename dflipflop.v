module dff(
    input Default,
    input D,
    input clk,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= Default;
    end

    always @(posedge Clock)
        Q <= D;

    assign NotQ = ~Q;
endmodule