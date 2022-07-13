extends Timer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng=RandomNumberGenerator.new()
var sum:int =0
# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()

func _on_Timer_timeout():
	wait_time=5+rng.randf_range(0,3)
	
