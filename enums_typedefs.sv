/*
-typedef is keword to define user defined data types.

-enum is enumerated type defines a set of named values.

-logic[2:0] is bit width of variables. we need at least 3-bit for this design because we have 6 different colors to assign. and in binary we always have the amount of the power of two. hence we will have 2^3=8 for this problem.

-values will be assigned automatically from 0 as: red = 3'b000, green = 3'b001, blue = 010...

-color_t is the name of the new type. from now on, we can create variables on this type

-%s is the placeholder for strings

-my_color.name() is a SystemVerilog feature that allows you to access the name of the enum value of my_color
*/
typedef enum logic [2:0] {
RED, GREEN, BLUE, CYAN, MAGENTA, YELLOW
} color_t;

color_t my_color;

 initial begin
   my_color = GREEN; // assign GREEN
   $display("The color is %s", my_color.name());
end