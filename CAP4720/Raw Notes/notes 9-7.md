---
geometry: margin=1in
---

# Notes September 7 #

Hunter Herbst  
Fall 2023  
CAP4720  

## GLSL ##

GLSL is an extended C-type language.  

* there are `int`, `float`, `uint`, and `bool`

### Vectors ###

* these can be extended into vectors with `vec2`, `vec3`, and `vec4`

| type | float | int | uint | bool |
|:---:|:---:|:---:|:---:|:---:|
|vector| vec`X` | ivec`X` | uvec`X` | bvec`X` |

where `X` is 2, 3, or 4

* vector values can be retreived as `xyzw`, `rgba`, or `stuv`
* you can do vector operations like you would with any other variable, so long as vectors are the same length
  * multiplication (`*`) on vectors does component-wise product. The same holds true for division.
  
  ```glsl
  vec3 a = vec3(1.0, 2.0, 3.0);
  vec3 b = vec3(0.5);
  vec3 c = a * b; // = vec3(0.5, 1.0, 1.5);  
  ```

### Matrices ###

* you can also do matrices of values using `mat2`, `mat3`, `mat4`
  * these create mats of size 2x2, 3x3, or 4x4
  * multiplication on matrices performs the cross-product of the two matrices  
$x=\begin{bmatrix}a \ c \\ b \ d\end{bmatrix}$  
$y=\begin{bmatrix}e \ g \\ f \ h\end{bmatrix}$  
$x*y=\begin{bmatrix}ae+cf \ ag+ch \\ be + df \ bg + dh\end{bmatrix}$
  * matrices are written column by column. As such:  
  $x = \begin{bmatrix}a \ d \ g \\ b \ e \ h \\ c \ f \ i\end{bmatrix}$
  
  ```glsl
  mat3 x = mat3(a, b, c,
                d, e, f,
                g, h, i);
  ```

  * defining a matrix with a single value creates an identity matrix of that size.
  $m = \begin{bmatrix}1 \ 0 \\ 0 \ 1\end{bmatrix}$

  ```glsl
  mat2 m = mat2(1);
  ```

* matrix-vector multiplication is allowed, just ensure you stick with writing `mat*vec` and not `vec*mat`

### Math Functions ###

Many standard math functions are available and they work on vectors component-wise.

* `max(x,y)` max between x and y
* `min(x,y)` min between x and y
* `abs(x)` $|x|$
* `sqrt(x)` $\sqrt{x}$
* `pow(x,e)` $x^e$
* `clamp(x, min, max)` locks value x between min and max
* `floor(x)` round down
* `ceil(x)` round up
* `dot(x,y)` dot-product of x and y
* `cross(x,y)` cross-product of x and y
* `normalize(x)` normalizes vector x
* `reflect(x, n)` reflects vector x across normal vector n
* `length(x)` length of vector x
* `distance(x,y)` distance between x and y
