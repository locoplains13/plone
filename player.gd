extends StaticBody2D

var speed = 2
var velocity = Vector2.ZERO

func _physics_process(delta: float) -> void:
	var input_direction 
	if Input.is_action_pressed("down"):
		position.y += 1.0 * speed
	if Input.is_action_pressed("up"):
		position.y -= 1.0 * speed
