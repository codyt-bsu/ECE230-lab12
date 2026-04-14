module one_hot(
    input w,
    input Reset,
    input clk,
    output z,
    output [4:0] states
);
    wire Anext, Bnext, Cnext, Dnext, Enext;

    dff Adff(
        .reset(Reset),
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(states[0])
    );

    dff Bdff(
        .reset(Reset),
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(states[1])
    );

    dff Cdff(
        .reset(Reset),
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(states[2])
    );

    dff Ddff(
        .reset(Reset),
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(states[3])
    );

    dff Edff(
        .reset(Reset),
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(states[4])
    );

    assign z = states[2] | states[4];

    assign Anext = 1'b0;
    assign Bnext = (states[0] | states[3] | states[4]) & ~w;
    assign Cnext = (states[1] | states[2]) & ~w;
    assign Dnext = w & (states[0] | states[1] | states[2]);
    assign Enext = w & (states[3] | states[4]);
endmodule