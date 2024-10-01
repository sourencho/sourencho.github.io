---
layout: post
title: Ripple Shader in Godot
description: Ripple Shader in Godot
comments: false
---

<video width="100%" autoplay loop>
  <source src="/assets/images/posts/ripple_shader/ripple.mov" type="video/mp4">
Your browser does not support the video tag.
</video>

I wanted to experiment with glsl and godot, so I messed around for a week or two making a ripple effect inspired by the macOS [Drift](https://youtu.be/BcrhRHD05ZA?si=Zm2MBIe0LPneRjI_) screensaver.

<small> Each line is drawn with a shader </small>

<img src="/assets/images/posts/ripple_shader/ripple_closeup.gif" width="400">

<br>

Roughly, the high level steps were:
- Spawn a grid of mesh instances using [MeshInstance2D](https://docs.godotengine.org/en/stable/classes/class_meshinstance2d.html)
- Space them out organically in a circle using [blue noise](https://x.com/2DArray/status/1450896043332227076)
- Render each mesh's texture with a shader
- Draw a segment using Inigo Quilez's [2D distance functions](https://iquilezles.org/articles/distfunctions2d/)
- Pass in noise and sample based on time to get scrolling effect
- Pass in position of each mesh to know where to sample the noise
- Offset segment angles, thickness and color based on noise value

<br>



