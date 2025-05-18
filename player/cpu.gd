extends StaticBody2D

@export var speed = 0
var is_on_cpu_zone = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if get_tree().get_nodes_in_group("ball"):
		if position.y > get_tree().get_nodes_in_group("ball")[0].position.y:
			position.y -= speed * delta
		elif position.y < get_tree().get_nodes_in_group("ball")[0].position.y:
			position.y += speed * delta
	position.y = clamp(position.y, 80, 570)
