const std = @import("std");
const capy = @import("capy");

pub usingnamespace capy.cross_platform;

pub fn main() !void {
    // Prints to stderr (it's a shortcut based on `std.io.getStdErr()`)
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});

    try capy.backend.init();

    var window = try capy.Window.init();
    try window.set(capy.Label(.{ .text = "Hello!, THIS IS A WINDOW" }));

    window.setTitle("Capy Window");
    window.resize(250, 100);

    window.show();

    capy.runEventLoop();
}
