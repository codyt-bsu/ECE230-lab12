module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

    // Hook up binary and one-hot state machines

    one_hot OH_state_machine (
        .w(sw),
        .Reset(btnU),
        .clk(btnC),
        .states(led[6:2]),
        .z(led[0])
    );

    binarysm B_state_machine  (
        .w(sw),
        .Reset(btnU),
        .clk(btnC),
        .State(led[9:7]),
        .z(led[1])
    );

endmodule