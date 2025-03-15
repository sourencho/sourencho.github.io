---
layout: page
title: Postcarts
permalink: /postcarts
---

[Postcarts](https://www.lexaloffle.com/bbs/superblog.php?mode=gifs&postcarts=1) are tiny programs (300 chars or less) made with [pico-8](https://www.lexaloffle.com/pico-8.php) that procedurally draw cool visuals.

<br>

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
<br>

**[Balloon](https://www.lexaloffle.com/bbs/?pid=163819#p)**

<img src="/assets/images/postcarts/balloon.gif" alt="balloon" width="384"/>

```
_set_fps(60)
::_::
  u=rnd(128)
  v=rnd(128)
  x=(u-64)/40
  y=(v-64)/50
  d=x*x+y*y
  z=sqrt(1-d)
  a=atan2(y,z)+t()/6
  b=atan2(x,z)+t()/6
  c=((a*b*a))%7+8
  if(d>1)c=0
  circfill(u,v,1,c)
goto _
```
<br>

**[Cat](https://www.lexaloffle.com/bbs/?pid=163823#p)**

<img src="/assets/images/postcarts/cat.gif" alt="cat" width="384"/>

```
_set_fps(60)
poke(0x5f2c,5)
f={0,1,1,2,1,5,6,2,4,9,3,1,1,8}
k=atan2
h=circfill
::_::
u=rnd(64)
v=rnd(128)
x=(u-32)/20
y=(v-50)/40
d=x*x+y*y
z=sqrt(1-d)
b=k(x,z)
a=k(y,z)+t()/2
c=(a)%7+8
if(d>1)c=0
if(b>0.7 and b < 0.8)c=f[flr(c)]
h(63,78,3,1)
h(u,v,1,c)
goto _
```

<br>

**Starfish**

<img src="/assets/images/postcarts/starfish.gif" alt="starfish" width="384"/>
<img src="/assets/images/postcarts/sando.gif" alt="sando" width="384"/>

_first image_
```
_set_fps(60)
poke(0x5f2c,5)
f={0,1,1,2,1,5,6,2,4,9,3,1,1,8}
k=atan2
h=circfill
::_::
u=rnd(64)
v=rnd(128)
x=(u-32)/20
y=(v-50)/40
d=x*x+y*y
z=sqrt(1-d)
b=k(x,z)
a=k(y,z)+t()/2
c=(a)%7+8
if(d>1)c=0
if(b>0.7 and b < 0.8)c=f[flr(c)]
h(63,78,3,1)
h(u,v,1,c)
goto _
```

<br>

**Ornament**

<img src="/assets/images/postcarts/ornament.gif" alt="ornament" width="384"/>
<img src="/assets/images/postcarts/ornament2.gif" alt="ornament2" width="384"/>

_first image_
```
?"\^!5f100▒1😐<67⌂⬅️3⬇️"
c=3l=0::_::cls()k=c<250 and 1.01 or 1.001
c*=k p=2.293for i=0,c do t=p*i y=1-(i/c*2) r=sqrt(1-y*y) x=cos(t)*r z=sin(t)*r circ(64+x*50,64+y*50,z+1,8*z)end l+=.001flip()goto _
```

<br>

--

_Thanks to @2DArray for his tutorials and tweets_
