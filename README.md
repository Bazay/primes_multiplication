# PrimesMultiplication
Created by Baron Bloomer for purpose of assessment by Funding Circle.

Task:
Write a program that prints a multiplication table of primes numbers.
The program should take an argument from the command line that specifies the amount of prime
numbers to generate and print out a multiplication table for these prime numbers.

An example of the way the application may run:
<executable_script_name> ­­count 10

Notes:
1. Consider code readability/complexity
2. Consider SOLID principles, but do not over­engineer
3. Consider extensibility
4. Feel free to use any library, except in the case of prime number generation
5. Consider how you can prove the correctness of your application
6. Write it in Ruby

Usage:
From the root directory,

    run `ruby primes_multiplication --table X` where X in the range: 5 >= X <= 25.

Tests:
From the root directory,

    run `rspec spec/` to run all tests.