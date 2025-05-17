extends StaticBody2D

@export var speed = 0
var is_on_cpu_zone = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if get_tree().get_nodes_in_group("ball") and is_on_cpu_zone:
		if position.y > get_tree().get_nodes_in_group("ball")[0].position.y:
			position.y -= speed
		elif position.y < get_tree().get_nodes_in_group("ball")[0].position.y:
			position.y += speed
	position.y = clamp(position.y, 80, 570)


func _on_cpu_zone_body_entered(body: Node2D) -> void:
	is_on_cpu_zone = true


func _on_cpu_zone_body_exited(body: Node2D) -> void:
	is_on_cpu_zone = false
