extends StaticBody2D

@export var speed = 3
var velocity = Vector2.ZERO

func _physics_process(delta: float) -> void:
	var input_direction 
	if Input.is_action_pressed("down"):
		position.y += 1.0 * speed
	if Input.is_action_pressed("up"):
		position.y -= 1.0 * speed
