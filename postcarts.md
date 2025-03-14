---
layout: page
title: Postcarts
permalink: /postcarts
---

[Postcarts](https://www.lexaloffle.com/bbs/superblog.php?mode=gifs&postcarts=1) are tiny programs (300 chars or less) made with [pico-8](https://www.lexaloffle.com/pico-8.php) that procedurally draw cool visuals.

**[Hairy](https://www.lexaloffle.com/bbs/?pid=158754#p)**

<img src="/assets/images/postcarts/hairy.gif" alt="hairy" width="384"/>

```lua
?"\^!5f100▒1⬇️3⬅️;⌂"
n=600
::_::
cls(0)
p = 2.2929
for i=0,n do
f=p*i
y=1-(i/n*2)
r=sqrt(1-y*y)
x=cos(f)*r
z=sin(f)*r
b=(x+z*1.3)+3.3
b=b^5/700
x=64+x*30
y=64+y*30
srand(i)
u=4*sin(t()/3)+3
v=5*abs(cos(rnd()+t()))
line(x,y,x+u,y+v,1.5*(b+1))
end
flip()
goto _
```
