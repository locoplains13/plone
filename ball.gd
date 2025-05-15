extends CharacterBody2D

var speed = 300.0

func _ready() -> void:
	var randomX = [-1,1].pick_random()
	var randomY = randf_range(-1,1)
	velocity = Vector2(randomX,randomY).normalized() * speed

func _physics_process(delta: float) -> void:
	velocity = velocity.normalized() * speed

	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	
