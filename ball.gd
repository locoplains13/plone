extends CharacterBody2D

@export var speed = 300.0
var score_cpu = 0
var score_player = 0

func _ready() -> void:
	var randomX = [-1,1].pick_random()
	var randomY = randf_range(-1,1)
	velocity = Vector2(randomX,randomY).normalized() * speed

func _physics_process(delta: float) -> void:
	velocity = velocity.normalized() * speed

	var collision = move_and_collide(velocity * delta)
	if collision:
		speed += 50
		velocity = velocity.bounce(collision.get_normal()) * delta
