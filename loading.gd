extends Node

func _ready():
	pass

func _on_Timer_timeout():
	get_tree().change_scene("res://Sprite.tscn")
