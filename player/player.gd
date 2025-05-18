extends StaticBody2D

@export var speed = 0

func _physics_process(delta: float) -> void:
	if Input.is_action_pressed("down"):
		position.y += speed * delta
	elif Input.is_action_pressed("up"):
		position.y -= speed * delta
	position.y = clamp(position.y, 80, 570)
