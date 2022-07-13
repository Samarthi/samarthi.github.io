extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed:int =500
onready var anim: AnimationPlayer=get_node("guitar/AnimationPlayer")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if($guitar.position.x<-1624):
		queue_free()
	if Score.playing:
		$guitar.position.x-=speed*delta

func _on_guitar_body_entered(_body):
	Score.score+=1
	anim.play("pickup")

