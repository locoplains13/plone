extends StaticBody2D

@export var speed = 3
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y > $"../ball".position.y:
		position.y -= 1.0 * speed
	elif position.y < $"../ball".position.y:
		position.y += 1.0 * speed
	else:
		pass
