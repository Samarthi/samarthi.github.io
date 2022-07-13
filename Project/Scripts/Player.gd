extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#stats
var score:int = 400
#physics
var speed: int = 200
var jumpForce: int = 700
var gravity: int = 1000
# Called when the node enters the scene tree for the first time.
var vel: Vector2 = Vector2()
var grounded: bool = false
onready var sprite =$Sprite
func _ready():
	pass
#	var sx=get_viewport().size.x
#	var sy=get_viewport().size.y
#	var sprite_height:float=$Sprite.frames.get_frame("walk",0).get_height()
#	var sprite_width:float=$Sprite.frames.get_frame("walk",0).get_width()
#	var c:float=(sprite_height/sprite_width)
#	$Sprite.scale.x=sx*0.001
#	sprite_width=$Sprite.frames.get_frame("walk",0).get_width()
#	$Sprite.scale.y=(c*sprite_width)/sprite_height
#	$Sprite.global_position.x=sx*0.2
#	$Sprite.global_position.y=sy*0.5

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	if Score.playing:
		$Sprite.animation = "walk"
		$Sprite.play()
		vel = move_and_slide(vel, Vector2.UP)
		vel.y += gravity * delta
		if Input.is_action_pressed("jump") and is_on_floor():
			$AudioStreamPlayer.play()
			vel.y -=jumpForce
		if not is_on_floor():
			sprite.set_frame(0);
	else:
		$timer_c.stop()
		$timer_o.stop()
		$Sprite.stop()
		if Input.is_action_pressed("jump"):
			Score.score=0 
			Score.playing=true
			Score.replay=false
			$timer_c.start()
			$timer_o.start()
			
