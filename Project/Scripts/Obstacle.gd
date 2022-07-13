extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed:int =700
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Score.playing:
		$AS/AnimatedSprite.play()
		$AS.position.x-=speed*delta
	else:
		$AS/AnimatedSprite.stop()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_AS_body_entered(_body):
	Score.playing=false
	Score.replay=true
	pass # Replace with function body.
