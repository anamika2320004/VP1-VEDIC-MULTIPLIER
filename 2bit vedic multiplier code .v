// Welcome to JDoodle!
//
// You can execute code here in 88 languages. Right now you’re in the Verilog IDE. 
//
//  1. Click the orange Execute button ️▶ to execute the sample code below and see how it works.
//  2. Want help writing or debugging code? Type a query into JDroid on the right hand side ---------------->
//  3. Try the menu buttons on the left. Save your file, share code with friends and open saved projects.
//
// Want to change languages? Try the search bar up the top.

// 2-bit Vedic Multiplier using Half Adders
module VM_2( 
    input  [1:0] a,
    input  [1:0] b,
    output [3:0] m
);

wire [2:0] s;
wire c;

// Partial products
and a1(m[0], a[0], b[0]);   // LSB
and a2(s[0], a[0], b[1]);   // cross term 1
and a3(s[1], a[1], b[0]);   // cross term 2

// First Half Adder for cross terms
HA ha1 (
    .sum(m[1]),
    .cout(c),
    .a(s[0]),
    .b(s[1])
);

// MSB partial product
and a4(s[2], a[1], b[1]);

// Second Half Adder for MSB + carry
HA ha2 (
    .sum(m[2]),
    .cout(m[3]),
    .a(c),
    .b(s[2])
);

endmodule

// Half Adder Module
module HA(
    input a, b,
    output sum, cout
);
  xor(sum, a, b);
  and(cout, a, b);
endmodule

// Testbench
module tb_VM_2;
  reg [1:0] a, b;
  wire [3:0] m;

  // Instantiate the multiplier
  VM_2 uut (
    .a(a),
    .b(b),
    .m(m)
  );

  initial begin
    $monitor("Time=%0t | a=%b | b=%b | Product=%b (%0d)", $time, a, b, m, m);

    // Test cases
    a = 2'b00; b = 2'b00; #10;
    a = 2'b01; b = 2'b01; #10;
    a = 2'b10; b = 2'b01; #10;
    a = 2'b11; b = 2'b01; #10;
    a = 2'b11; b = 2'b11; #10;

    $finish;
  end
endmodule
