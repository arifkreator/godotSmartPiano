extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
func _input(ev):
	if ev is InputEventKey:
		if ev.pressed and ev.scancode == KEY_A:
			ev.is_action_pressed()
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
