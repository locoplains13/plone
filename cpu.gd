extends CharacterBody2D

@export var speed = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var ball_path = $"../ball" if $"../ball2" == null else $"../ball2"
	if ball_path:
		if position.y > ball_path.position.y:
			position.y -= speed
		elif position.y < ball_path.position.y:
			position.y += speed
		move_and_slide()
