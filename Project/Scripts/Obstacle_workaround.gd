extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const COLL=preload("res://Obstacle.tscn" )
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_timer_o_timeout():
	var c= COLL.instance()
	add_child(c) 
	print("added O")

