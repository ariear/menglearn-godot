extends KinematicBody2D

export var speed = 100
var movement = Vector2(0,0)
const accel = 50
const max_speed = 100
const gravity = 10
const jump_force = -300
const max_jump = 2
var jump_count = 0

func _physics_process(delta):
	
	if (not is_on_floor()) :
		movement.y += gravity
	else :
		movement.y = 0
		jump_count = 0
		movement.x = lerp(movement.x, 0, 0.1)

	if (Input.is_action_pressed("Maju")) :
		movement.x += accel
		movement.x = min(movement.x, max_speed)
	elif (Input.is_action_pressed("Mundur")) :
		movement.x -= accel
		movement.x = max(movement.x, -max_speed)
	
	if (Input.is_action_pressed("Atas")) :
		movement.y -= accel
		movement.y = max(movement.y, -max_speed)
	elif (Input.is_action_pressed("Bawah")) :
		movement.y += accel
		movement.y = min(movement.y, max_speed)
		
	if (Input.is_action_just_pressed("Lompat") and ( is_on_floor() or (jump_count < max_jump) ) ) :
		movement.y = jump_force
		jump_count += 1
	elif (is_on_ceiling()) :
		movement.y = 0
	elif (is_on_wall()) :
		print('Njir kamu nabrak tembok')
		
	move_and_slide(movement, Vector2(0, -1), false, 4, PI/4, false)
