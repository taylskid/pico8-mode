# Pico-8 Mode

This is just a little major mode to add adequate syntax highlighting for pico-8
cartridges.

I haven't written a major-mode before, so things could be a little wonky, but
the mode right now is extremely small (and will probably stay that way).

I would also like to eventually add a color theme for pico-8, because it's
insanely cute.

## TODO

It's missing a few features that I think are pretty important for the mode.

* It should be able to handle p8 cartridges' `__lua__`/`__gfx__` delimeters and
  put the garbage data into a comment face. (This requires messing with syntax
  tables, which I haven't read about.)

* It should have some commands to interface with pico8 (not sure how
  feasible this actually is).

* Highlighting of local variables

* Other stuff, probably