extends Area2D

var a = 0
var tekan = false
onready var test = get_parent().get_node('Label')

func _on_Area2D_area_entered(area): 
	if area.get_name()=="note1":
		if tekan == true:
			a+=10
			test.set_text(str(int(a)))
	print (tekan)

func _input(ev):
	if ev is InputEventKey:
		if ev.pressed and ev.scancode == KEY_A:
#			ev.is_action_pressed()
			tekan = true
