extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var count = 0
var speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	

func _input(event):
	print(event)

func _process(delta):
	if (Input.is_action_just_pressed("Maju")) :
		$Zombie.position.x += speed
		$Zombie.rotation_degrees += 5
	elif (Input.is_action_just_pressed("Mundur")) :
		$Zombie.position.x -= speed
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
