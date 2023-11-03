#! /bin/bash

# By default anything which you write just after "echo" command will consider that as a string
# To print the value we need to us "$(( variable <Operator> <Operator> ))"

num1=20
num2=5

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

# Instead of using double parentheses (()), we can use single parentheses ( expr $var1 <Operator> $var2 )

echo $(expr $num1 + $num2 )
echo $(expr $num1 - $num2 )
echo $(expr $num1 \* $num2 ) # with expr we need to use "\" for multiply symbol "*"
echo $(expr $num1 / $num2 )
echo $(expr $num1 % $num2 )

# To perform arithmetic operation with float value we need to have some tool, it can not be done like above
# One of the tool can be used as "bc" ==> bc stand for basic calculator

num1=20.5
num2=5

echo "20.5 + 5" | bc
echo "$num1 + $num2" | bc

# For division with "bc", we need to define "scale=<number>", this will take the how many decimal value you want to keep

echo "scale=2,$num1/$num2" | bc

# To perform additional arithmetic operation, we need to use "l" which stand for maths library

num=27

# To perform square root
echo "scale=2,sqrt($num)" | bc -l

# To perform power of a number
echo "scale=2,3^3" | bc -l