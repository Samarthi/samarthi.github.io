extends Timer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng=RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	 # Replace with function body.

func _on_timer_o_timeout():
	wait_time=5+rng.randf_range(0,20)
