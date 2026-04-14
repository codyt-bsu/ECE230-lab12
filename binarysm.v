module binary(
    input w,
    input clk,
    output z
);

    wire [2:0] State;
    wire [2:0] Next;

    dff zero(
        .Default(1'b0),
        .Reset(Reset),
        .D(Next[0]),
        .clk(clk),
        .Q(State[0])
    );

    dff one(
        .Default(1'b0),
        .Reset(Reset),
        .D(Next[1]),
        .clk(clk),
        .Q(State[1])
    );

    dff two(
        .Default(1'b0),
        .Reset(Reset),
        .D(Next[2]),
        .clk(clk),
        .Q(State[2])
    );

    assign z = State[1] & ~State[0];
    assign Next[0] = w & ~State[1] & ~State[0];
    assign Next[1] = w & (State[1] | State[0]);

endmodule