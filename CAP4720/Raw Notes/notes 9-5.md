---
geometry: margin=1in
---

# Notes September 5 #

Hunter Herbst  
Fall 2023  
CAP4720  

## OpenGL Pipeline ##

1. Vertecies
2. Vertex Shader
3. Primitives Generation
4. Rasterization
5. Fragment Shader

## Vertex Buffer Objects ##

* Used to store vertex data to be sent to the GPU
* GPU does not know how our data is stored, it just sees a bunch of values in an array (buffer)
  * We tell GPU how the information is stored by specifying the GL_ATTRIBUTE
  
  ```py
  # GET THIS FROM THE POWERPOINT BEFORE PUSHING YOU MORON
  # HelloTriangle.pdf 40-44
  ```

## Vertex Array Objects ##

* Used to store multiple VBOs before being sent to the GPU
* If you want to use more than one VBO you *must* use a VAO
* When creating a VAO you need to bind it to a buffer, to be passed to the GPU `glBindVertexArray(vao)`

```py
# dont be a dummy and pull this information from the same powerpoint as VBOs, starting at slide 48
```

## Shaders ##

There are two shaders:

* Vertex: defines position of each vertex and can transform them in any way
* Fragment: calculates the color of each pixel on the screen
