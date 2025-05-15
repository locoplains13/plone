extends CharacterBody2D

@export var speed = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	
	if position.y > $"../ball".position.y:
		position.y -= speed * delta
	elif position.y < $"../ball".position.y:
		position.y += speed * delta
	move_and_slide()
