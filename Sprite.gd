extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Button_pressed():
	
	get_tree().quit()
	pass # replace with function body


func _on_Button2_pressed():
	get_tree().change_scene("res://pilihLVL.tscn")
	


func _on_howToPlay_pressed():
	pass # replace with function body


func _on_highSkor_pressed():
	pass # replace with function body


func _on_TextureButton_pressed():
	pass # replace with function body
