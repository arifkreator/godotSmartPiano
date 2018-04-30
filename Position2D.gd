extends Position2D

onready var note1 = load("res://note1.tscn")
onready var mypos = self.position
onready var array = [2,4,6,8,10] #random isi array
onready var test = get_parent().get_node('Label')
func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func loop():
	pass

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	if get_parent().get_node("end note").status1:
		randomize()
		var rand = rand_range(50,100)
		var simpanLok = note1.instance()
#		var nilai = rand_range(1,100)
#		test.set_text(str(int(nilai)))
		simpanLok.speed = rand
		
#		print (str(int(nilai%2)))
#		test.set_text(str(array[randi()%array.size()]))
#		print(array[randi()%array.size()]) #random isi array
#		print (simpanLok.speed)
#		simpanLok.position = mypos
		add_child(simpanLok)
		get_parent().get_node("end note").status1=false
	pass
