# char32-matlab
This program is implemented by matlab. It can convert arbitrary decimals to 32-bit binary numbers. 32-bit data format: 0 (sign bit), 1-15 (integer bits), 16-31 (decimal places)

这里有两类32位定点数据，以示例说明。

a.
正数+1:32'h0001_0000
负数-1:32'h8001_0000
b.
正数+1:32'h0001_0000
负数-1:32'hFFFF_0000


很明显b类是补码形式的定点格式，在项目实际运用过程中，b类是更实用的。


There are two types of 32-bit fixed-point data, to illustrate with examples.

a.
Positive number +1: 32'h0001_0000
Negative number -1: 32'h8001_0000
b.
Positive number +1: 32'h0001_0000
Negative number -1: 32'hFFFF_0000


Obviously, type b is a fixed-point format in the form of complements. In the actual application process of the project, type b is more practical.
