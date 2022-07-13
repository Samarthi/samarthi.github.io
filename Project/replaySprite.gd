extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.position=get_viewport_rect().size/2
	if Score.replay and Score.playing==false:
		self.visible=true
	else:
		self.visible=false


func _on_replay_gui_input(event):
	if event is InputEventMouseButton:
		self.visible=false
