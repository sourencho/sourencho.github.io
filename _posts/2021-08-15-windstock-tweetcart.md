---
layout: post
title: Windsock Tweetcart
description: First Tweetcart
summary: First Tweetcart
comments: false
---

I've been facinated by the tweetcarts I've seen on twitter recently. Tweetcarts are visual demos or games that fit into 280-characters of PICO-8 code.

This is a great resource if you want see examples and how they are made: [pixienop: Pico-8 Tweetcart Studies](https://demobasics.pixienop.net/tweetcarts/).

I tried my hand at making a tweetcart of a procedurally animated windsock.

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">First <a href="https://twitter.com/hashtag/pico8?src=hash&amp;ref_src=twsrc%5Etfw">#pico8</a> <a href="https://twitter.com/hashtag/tweetcart?src=hash&amp;ref_src=twsrc%5Etfw">#tweetcart</a> :D<br><br>source in reply<br>saw this wind thingy on the side of the road<br>had to remove the wind squiggles because of char count :| <a href="https://twitter.com/hashtag/creativecoding?src=hash&amp;ref_src=twsrc%5Etfw">#creativecoding</a> <a href="https://twitter.com/hashtag/ProceduralArt?src=hash&amp;ref_src=twsrc%5Etfw">#ProceduralArt</a> <a href="https://t.co/p5hb8QtEXb">pic.twitter.com/p5hb8QtEXb</a></p>&mdash; sourencho 🐧 (@sourencho) <a href="https://twitter.com/sourencho/status/1425115139108388865?ref_src=twsrc%5Etfw">August 10, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Code
```
t=0 ::_:: cls(13) f=circfill for j=1,3 do line(55+j-6,130,55+j-3,55,1) end f(55+1,55,14+2,1) m=-1.1 t+=0.02 if(rnd() > 0.9)m+=(rnd() > 0.5 and 0.04 or -0.04)
for i=0,8 do for n=1,2 do f(55+n+3*i,55+sin(t+0.025*i)*m*i+i*2,14-i*1.1,14+(i%2)) end end
flip() goto _
```