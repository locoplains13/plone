extends StaticBody2D

@export var speed = 0

func _process(_delta: float) -> void:
	if Input.is_action_pressed("down_arrow"):
		position.y += speed 
	elif Input.is_action_pressed("up_arrow"):
		position.y -= speed
	position.y = clamp(position.y, 80, 570)
