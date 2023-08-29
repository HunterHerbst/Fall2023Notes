---
geometry: margin=1in
---
# Notes August 24, 2023 #

Hunter Herbst  
Fall 2023  
COP4020  

## **APPLY TO LOCKHEED CWEP** ##

* All "variables" and functions are immutable.
* `++` $\leftarrow$ concatenation operator
* `:` $\leftarrow$ cons operator, faster than `++` for prepending single values to the front of lists
* `!!` $\leftarrow$ index operator to get element from a list

    ```hs
    l = [1,2,3,4]
    l !! 2 -- returns 3
    ```

* `/=` is the operator for not equal

* `drop n` $\leftarrow$ drops `n` number of elements from the head of the list

* since lists are immutable an easy way to change indexes of an array
  * `xs` is just documentation shorthand for "list of elements"

    ```hs
    changeSubscriptValue xs index newValue = take index xs ++ [newValue] ++ drop (index+1) xs
    ```

* `let` can simplify list comprehensions

    ```hs
    -- equivalent statements
    -- ANDing is just adding more statements with a comma
    -- ORing requires `||`
    [x*3 | x<-[1..10], x*3 >= 12, x*3 == 9]
    [t3 | x<-[1..10], let t3 = x*3, t3 >= 12, t3 == 9]
    ```

* usage of backtick turns functions into infix operators

    ```hs
    -- equivalent statments
    mod 19 3 -- returns 1
    19 `mod` 3
    ```
