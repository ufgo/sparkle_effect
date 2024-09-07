![](title.gif)
# Simple Sparkle Effect for Defold

 Simple Sparkle Effect is Material for creating a sparkle or glare effect on the sprite. You can adjust parameters such as size, angle, and position in the material constants, as well as animate them via go.animate()

## Setup

### Dependency

To integrate the **Sparkle Effect** extension into your own project, add this project as a [dependency](https://www.defold.com/manuals/libraries/) in your **Defold** game. Open your `game.project` file and add the following line to the dependencies field under the project section:

> [https://github.com/ufgo/sparkle_effect/archive/master.zip](https://github.com/ufgo/sparkle_effect/archive/master.zip)  


## Usage

 - I  highly  recommend  using a single  image  in the atlas.  
 - Adjust the constants  in the material  so  that  they  match  your  sprite.
 - Copy the material in order to be able to edit the constants of the materials or set them via go.set() Adjust the constants  in the material  so  that  they  match  your  sprite. 
 - Set sparkle_material to sprite then animate it.

## Example

```lua
function init(self)
	--shader animation
	local url = msg.url(nil, go.get_id(), "sprite")
	go.animate(url, "pos.x", go.PLAYBACK_LOOP_FORWARD, 0.8, go.EASING_INSINE, 0.7)
end
```

## License
![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png)