module one_hot(
    input w,
    input clk,
    output z
);
    wire Anext, Bnext, Cnext, Dnext, Enext;
    wire Astate, Bstate, Cstate, Dstate, Estate;

    dff Adff(
        .Default(1'b1),
        .D(Anext),
        .clk(clk),
        .Q(Astate)
    );

    dff Bdff(
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
        .Default(1'b0),
        .D(Dnext),
        .clk(clk),
        .Q(Dstate)
    );

    dff Edff(
        .Default(1'b0),
        .D(Enext),
        .clk(clk),
        .Q(Estate)
    );

    assign z = Cstate;

    assign Anext = ~w;
    assign Bnext = w & Astate;
    assign Cnext = (w & Bstate) | (w & Cstate);
    assign Dnext = 
    assign Enext = 
endmodule