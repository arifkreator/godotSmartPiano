extends Area2D
#
#const BALL_SPEED = 100
var direction = Vector2(0, 1)
var speed = 100
var benar = [2,4,6,8,10,12,14,16,18,20,22,24,26,28,30]
var salah = [1,3,5,7,9,11,13,15,17,19,21,23,25,27,29]
#onready var test1 = get_parent().get_node('nilaiNote2')
onready var initial_pos = self.position

func _ready():
	print(benar[randi()%benar.size()])
	print(salah[randi()%salah.size()])
	pass

func _randomBenar():
	benar[randi()%benar.size()]
#	test1.set_text(str(int(benar)))
	

func _randomSalah():
	salah[randi()%salah.size()]

func _process(delta):
	position += direction * speed * delta
	