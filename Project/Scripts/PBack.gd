extends ParallaxBackground
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var b_s:int = 300
var s_s:int = 200
# Called when the node enters the scene tree for the first time.
func _ready():
	$sky/Sprite.position.y=280
	$sky/Sprite.position.x=0
	$sky/Sprite.scale.x=0.6
	$sky/Sprite.scale.y=0.6
	
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Score.playing:
		$sky/Sprite.position.x-=s_s*delta
		if ($buildings/Sprite1.position.x<-2000):
			$buildings/Sprite1.position.x=$buildings/Sprite2.position.x+4000
		if($buildings/Sprite2.position.x<-2000):
			$buildings/Sprite2.position.x=$buildings/Sprite1.position.x+4000
		$buildings/Sprite1.position.x-= b_s*delta
		$buildings/Sprite2.position.x-= b_s*delta
		


func _on_replay_gui_input(event):
	if event is InputEventMouseButton:
		get_tree().reload_current_scene()


func _on_VisibilityNotifier2D_viewport_exited(_viewport):
	$sky/Sprite.position.x=2600
	$sky/Sprite.position.y=280
	$sky/Sprite.scale.x=0.6
	$sky/Sprite.scale.y=0.6
	
	
