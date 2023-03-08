extends RigidBody2D

func _ready():
	pass

func _physics_process(delta):
	if (Input.is_action_pressed("testing")):
		apply_central_impulse(Vector2(5, 0))
