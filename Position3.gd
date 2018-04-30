extends Position2D

onready var note3 = load("res://note3.tscn")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func loop():
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if get_parent().get_node("end note").status3:
		randomize()
		var rand = rand_range(50,150)
		var simpanLok = note3.instance()
		simpanLok.speed = rand
#		print(simpanLok.speed)
		add_child(simpanLok)
		get_parent().get_node("end note").status3=false
	pass
