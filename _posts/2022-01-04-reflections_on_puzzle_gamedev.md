---
layout: post
title: Reflections on puzzle gamedev
description: Mimic PICO-8
Summary: Mimic PICO-8
comments: false
---

Mimic is a short puzzle game where you move in the pattern of animals to take their form. You can play it [here](https://sourencho.itch.io/mimic) in your browser :)

The seed was planted during a game jam and after tinkering at it for over a year I released it on [itch.io](https://itch.io/). It got pretty good reception and I learned a lot throughout the development. Below are reflections on some of those learnings with concrete examples to provide ample context.

![mimic_trailer](/assets/images/posts/puzzle_gamedev_reflections/mimic_trailer.gif)

# Learnings
- [Constraints keep you moving](#constraints-keep-you-moving)
- [Playtest, playtest, playtest](#playtest-playtest-playtest)
- [The hardest part is teaching](#the-hardest-part-is-teaching)
- [Just put down a placeholder](#just-put-down-a-placeholder)
- [Follow and join communities](#follow-and-join-communities)
- [Accessibility brings players](#accessibility-brings-players)

## Constraints keep you moving

I was able to finish this game thanks to the limitations of the engine I used. Mimic was made in [PICO-8](https://www.lexaloffle.com/pico-8.php), a fantasy console with a small 128x128 pixel display, 16 color palette and code token limit. It also comes with a built-in sprite, map and audio editor.

> The harsh limitations of PICO-8 are carefully chosen to be fun to work with, to encourage small but expressive designs, and to give cartridges made with PICO-8 their own particular look and feel.

Many parameters were already chosen for me and being able to make everything with one tool without the crippling burden of choice made development cozy and straightforward. 
- Drawing sprites was simple: there aren't many ways to draw a tree or bird with 8x8 pixels. And PICO-8's colors look nice together.
- Cutting out features was simple: I had to keep the game short and sweet because I ran into the code token limit. I also didn't have space for time consuming features like undo or level select.
- Supporting all platforms and resolutions was simple: PICO-8 games run on almost everything and has a fixed resolution. UI and visual effects are much easier to implement on a fixed resolution.



## Just put down a placeholder

During development I often had misc tasks such as drawing a new creature or adding a new visual/sound effect. Deterred by intimidation and uncertainty, I would procrastinate on these tasks and they would eventually become frustrating blockers.

A great strategy against this was plopping down a placeholder. This often prevents a game element from becoming a blocker and also has an added benefit - every time the placeholder comes up during testing you are passively fleshing it out, just by observing it in context.

An example was the placeholder sound effect that triggers when you change the pattern of an animal. The placeholder didn't sound good but it had a downard tone to imply that the animal was startled or confused by the change. Players interpreted the negative sound to mean that they had done something wrong and thus avoided changing animal patterns. By having _something_ there for playtests, when I eventually designed the final version of this sound effect, I knew not to use something that sounded negative.

## Playtest, Playtest, Playtest

I constantly playtested Mimic. Even when it looked ugly and had rough edges. I did this with many different kinds of players: gamers, non-gamers, strangers, friends, kids, family, gamdevs, programmers, etc.

Observing where and why people had trouble helped me tune the difficulty of the game, remove unintentionally confusing parts and cut out fluff. This resulted in fairly polished levels and controls that allowed most players to have a good time. 

I often had a list of things to tweak and improve after playtesting. For example players would not realize that they could push small tiles, so I made them shake to hint to the player that they are mobile. Or players would get stuck on the river of level 01 because they didn't know that they could jump directly from the water onto the yellow diamond. They would try to find a way to get on the little island between the rivers. So I made the river fully surround the diamond to remove the ambiguity.

![before](/assets/images/posts/puzzle_gamedev_reflections/mimic_level_01_before.png)
![after](/assets/images/posts/puzzle_gamedev_reflections/mimic_level_01_after.png)



Playtesting in realtime was very valuable because I could notice things that players wouldn't communicate in a written survey or feedback conversation. If players were uncomfortable sharing their screen, I usually asked for a recording.

Where I playtested:
- [NYU Playtest Thursdays](https://gamecenter.nyu.edu/events/playtest-thursdays/) (signed up even tho I don't go there)
- [Lexaloffle BBS](https://www.lexaloffle.com/bbs/) (uploaded an alpha)
- [Recurse Center](https://www.recurse.com/) (organized a playtest session)
- Neoretro Creative Coding discord server (asked members to playtest)
- Friends and family (carried around the game on my phone and laptop)

## The hardest part is teaching

I thought the hardest part of making a puzzle game would be coming up with unique mechanics and crafting clever puzzles. But turns out you also have to _teach_ the player how to solve those puzzles.

Reading the chapters about puzzles in "The Art of Game Design" by Jesse Schell gave a good perspective on teaching.

I particularly liked "Puzzle Principle #9: Give the Answer!":
> Ask yourself this question: what is it that is so pleasurable about solving puzzles? Most people answer that it is the “aha!” experience you get when you figure out the answer, but the funny thing is that experience is triggered not by solving the puzzle but by seeing the answer. [...]

Teaching is quite difficult because everyone learns in a different way but in my experience  learn-by-doing seems to work well for most people. Rather than having explicit hints or tutorials between levels, I included simple 'teaching' levels with the hope that the player would figure out how to put the pieces together. Having pairs of levels where the first introduces a new mechanic to solve a straightforward puzzle, followed by a second level that uses that same mechanic to solve a more difficult puzzle turned out to be an effective and fun solution.

Below are two examples of teaching levels where I reduced the level to its barest form with the hope that players would eventually try the right thing i.e. use the small rock to learn that you can alter a pattern and use the butterfly to learn how to mimic wide animals.

![simple teaching level_1](/assets/images/posts/puzzle_gamedev_reflections/simple_teaching_level_1.png)
![simple teaching level_2](/assets/images/posts/puzzle_gamedev_reflections/simple_teaching_level_2.png)

## Follow and join communities

Throughout the development of Mimic I was actively following other gamedevs via twitter, discord and podcasts for inspiration. 

For example, inspired by [@LootBndt](https://twitter.com/LootBndt)'s minimal style on twitter, I made a major update to Mimic's visuals at some point:

![before](/assets/images/posts/puzzle_gamedev_reflections/mimic_visual_style_old.png)
![after](/assets/images/posts/puzzle_gamedev_reflections/mimic_visual_style_new.png)



It was particularly valuable to follow other PICO-8 gamedevs. Since the engine is so limited, playing other games demonstrates possibilities relevant to your own development. And more importantly, due to the open source nature of PICO-8 carts and the lack of plug-and-play components, I could easily read the source code of other carts and learn how a feature was implemented. I wouldn't be able to make sense of a Unity project, but a PICO-8 project is fairly approachable.

I also joined gamedev communities where people are supportive and interested in having game design discussions. These kept me motivated and inspired, but more importantly they made the gamedev process all the more lovely. I'm grateful for the weekly gamedev hangout with friends at [Recurse Center](https://www.recurse.com/) and for awesome discord servers such as PICO-8 and Neoretro Creative Coding :)

Some sources of inspiration and wisdom for Mimic:
- [Baba Is You](https://hempuli.com/baba/) (game)
- [Trasevol Dog](https://trasevol.dog/) (pico8 devlog)
- [itch.io games tagged puzzle and pico8](https://itch.io/games/top-rated/genre-puzzle/tag-pico-8) (games)
- [Eggplant: The Secret Lives of Games](https://eggplant.show/) (podcast)
- [AIAS GMN: Braid and The Witness Creator, Jonathan Blow](https://interactive.libsyn.com/braid-and-the-witness-creator-jonathan-blow) (podcast)
- My friends :)

## Accessibility brings players

Mimic got way more plays than I expected and this was largely due to luck ... but I believe accessibility also had a part to play. I think these properties of the game brought in many players:
- Simple control scheme
- Players set their own pace
- Short and not too hard
- Free and runs in a browser (even mobile)

A couple of days after I released Mimic and tweeted about it, Mimic was posted on [bontegames.com](https://www.bontegames.com/2021/12/mimic-browser.html). It's an indie gamedev blog which posts "interesting browser and mobile games". On the first day, the post brought 300+ players to the itch page, which then in turn boosted Mimic on itch rankings and brought organic traffic.

_itch.io analytics of referrers by day:_
![test](/assets/images/posts/puzzle_gamedev_reflections/referrers_by_day_bontegames.png)

![test](/assets/images/posts/puzzle_gamedev_reflections/referrers_by_day_itchio.png)

It was subsequently posted on other blogs with audiences who seem to like free browser games, which further increased the organic traggic on itch:
- [terrysfreegameoftheweek.com](https://terrysfreegameoftheweek.com/mimic/)
- [buried-treasure.orf](https://buried-treasure.org/2022/01/mimic/)
- [blog.livedoor.jp/lkrejg](http://blog.livedoor.jp/lkrejg/archives/66173151.html)
- [jayisgames.com](https://jayisgames.com/review/weekday-puzzle-n48.php)
- [r/WebGames](https://www.reddit.com/r/WebGames/comments/rn97x4/mimic_by_sourencho_a_short_puzzle_game_where_you/) 


I emailed Bart Bonte of bontegames and asked how he found Mimic in the first place, because I felt like that initial boost helped tremendously. He said that someone sent him my game and that he has a large audience who love a good puzzle game!

I felt very lucky to have so many people try Mimic. All the kind comments made me happy and gave me motivation to work on more games! It probably wouldn't have gotten the same kind of reception if it wasn't accessible in the ways mentioned above.

<br>
<hr>
Thanks for reading, I hope it was interesting :)

Feel free to follow or dm me on [twitter](https://twitter.com/sourencho)!





