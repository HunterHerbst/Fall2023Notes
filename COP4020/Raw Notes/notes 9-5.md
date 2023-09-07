---
geometry: margin=1in
---

# Notes September 5 #

Hunter Herbst  
Fall 2023  
COP4020  

* Every function in Haskell officially takes only one parameter
  * Functions that accept several parameters are called *curried functions*
  * Haskell creates these functions on the fly internally to break down all functions into single parameter functions

    ```hs
    -- consider max
    max 4 5 -- multiparamter function

    -- would be broken down internally to
    getMaxComparedTo4 n = if n > 4 then n else 4 -- compares whatever value to 4

    -- this would then be used with n = 5
    getMaxComparedTo4 5 -- would return 5, just as `max 4 5` does
    ```

* Higher order functions, are functions that can take functions as parameters.
  * consider `map f xs` or `filter f xs`
  * `map` takes a function `f` and applies it to list `xs`
  * `filter` works similarly, applying a conditional function `f` and applying it to list `xs`
  * You can also make your own higher order functions:

    ```hs
    -- takes function `f` and applies it to value `x` twice
    applyTwice f x = f (f x)
    ```

  * `zipWith f xs ys` is very handy for combining two lists with any given function
  * `foldl f x xs` iterates over list `xs` to apply function `f` to value `x` going from left to right
    * the reverse counterpart to `foldl` is `foldr`
