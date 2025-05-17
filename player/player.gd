extends CharacterBody2D

@export var speed = 0

func _process(delta: float) -> void:
	if Input.is_action_pressed("down"):
		position.y += speed 
	if Input.is_action_pressed("up"):
		position.y -= speed
	move_and_slide()
