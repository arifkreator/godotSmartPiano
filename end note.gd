extends Area2D

var status1 = false
var status2 =  false
var status3 = false

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


func _on_end_note_area_entered(area):
#	status = true
	if area.get_name() == "note1":
		area.queue_free()
		status1 = true
	if area.get_name() == "note2":
		area.queue_free()
		status2 = true
	if area.get_name() == "note3":
		area.queue_free()
		status3 = true