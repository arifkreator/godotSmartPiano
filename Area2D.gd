extends Area2D

var a = 0
var tekan = false
var on_note = false
onready var test = get_parent().get_node('Label')

func _ready():
	set_process(true)

func _process(delta):
	if tekan:
		a+=10
		test.set_text(str(int(a)))
		pass
	pass


func _on_Area2D_area_entered(area):
	if area.get_name()=="note1":
		on_note = true
		set_process(true)

func _input(ev):
	if ev is InputEventKey:
		if ev.pressed and ev.scancode == KEY_A:
			tekan = true
			print(tekan)
		if not ev.pressed and ev.scancode == KEY_A:
			tekan = false
			print(tekan)

func _on_Area2D_area_exited(area):
	set_process(false)
	on_note = false
	tekan = false
