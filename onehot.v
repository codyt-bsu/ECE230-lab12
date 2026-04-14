module one_hot(
    input w,
    input Reset,
    input clk,
    output z
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;

    dff Adff(
        .Reset(Reset),
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate)
    );

    dff Bdff(
        .Reset(Reset),
        .Default(1'b0),
        .D(Bnext),
        .clk(clk),
        .Q(Bstate)
    );

    dff Cdff(
        .Default(1'b0),
        .D(Cnext),
        .clk(clk),
        .Q(Cstate)
    );

    dff Ddff(
        .Reset(Reset),
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate)
    );

    dff Edff(
        .Reset(Reset),
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate)
    );

    assign z = Cstate | Estate;

    assign Anext = 1'b0;
    assign Bnext = (Astate | Dstate | Estate) & ~w;
    assign Cnext = (Bstate | Cstate) & ~w;
    assign Dnext = w & (Astate | Bstate | Cstate);
    assign Enext = w & (Estate | Dstate)
endmodule