extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const COLL=preload("res://Collectible.tscn" )


func _on_Timer_timeout():
	var c= COLL.instance()
	add_child(c) 



func _on_replay_gui_input(event):
	if event is InputEventMouseButton:
		Score.playing=true
		$Player/timer_c.start()
		$Player/timer_o.start()
		Score.score=0
		Score.replay=false

