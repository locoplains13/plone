extends CharacterBody2D

var speed = 300.0

func _ready() -> void:
	var randomX = [-1,1].pick_random()
	var randomY = [-randf_range(0.3,0.8), randf_range(0.3,0.8)].pick_random()
	velocity = Vector2(randomX,randomY).normalized() * speed

func _physics_process(delta: float) -> void:
	velocity = velocity.normalized() * speed

	var collision = move_and_collide(velocity * delta)
	if collision:		
		speed += 25
		if collision.get_collider() in get_tree().get_nodes_in_group("paddle"):
			var paddle = collision.get_collider()
			var new_x:float = -abs(velocity.x) if position.x <= paddle.position.x else abs(velocity.x)
			var from_center:float = position.y - paddle.position.y
			if from_center > -5 and from_center < 5:
				print(from_center)
				velocity = velocity.bounce(collision.get_normal()) * delta
			else:
				velocity = Vector2(new_x, from_center*5)
		else:
			velocity = velocity.bounce(collision.get_normal()) * delta
			
		# bounce should be different depending on where on the paddle it hit
		
