extends CharacterBody2D

@export var speed = 0
var ball
func _ready() -> void:
	ball = $"../ball"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if is_instance_valid(ball):
		if position.y > ball.position.y:
			position.y -= speed
		elif position.y < ball.position.y:
			position.y += speed
		move_and_slide()
