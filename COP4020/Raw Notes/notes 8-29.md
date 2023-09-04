---
geometry: margin=1in
---

# Notes August 29 #

Hunter Herbst  
Fall 2023  
COP4020  

## Check [Project Euler](https://projecteuler.net) ##

* when working with decimals, anything between 0 and 1 needs to be padded with at least a single zero

    ```txt
     .5 NO
    0.5 YES
    ```

* in list comprehensions, underscore (`_`) can be used as a "don't care" placeholder.

## Example ##

* If we list all the natural numbers below 10 that are mltiples of 3 and 5, we get 3, 5, 6, and 9. And their sum is 23.
* Find the sum of all numbers that are multiples of 3 and 5 under 1000.

```hs
mults n = [x | x <- [1..n], x `mod` 3 == 0 || x `mod` 5 == 0]
sum $ mults 1000 -- returns 233168
```

* Write a function that finds the largest palindrome from the product of two 3-digit numbers.

```hs
isPalindrome n = show n == reverse (show n) -- palindrome checker
largest = [(x*y, x, y) | x <- [100..999], y<-[100..999], isPalindrome(x*y)] -- generate list of 3-digit product palindromes and their factors
maximum largest -- will return the largest number from the list
```

## Recursion ##

* Cannot type recursive functions directly into the interpreter. Recursive functions require a base case, which takes two lines, requiring us to create them in source files.

[Example Recursive Functions](../Scripts/8-29%20scripts/rec.hs)
