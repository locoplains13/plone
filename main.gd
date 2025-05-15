extends Sprite2D

var score_player2 = 0
var score_player1 = 0

# Called when the node enters the scene tree for the first time.
func remove_ball():
	get_node(NodePath(get_child(get_child_count()-1).name)).free()

func _on_winzone_body_entered(body: Node2D) -> void:
	score_player2 += 1
	remove_ball()
	instance_ball()

func _on_winzone_2_body_entered(body: Node2D) -> void:
	score_player1 += 1
	remove_ball()
	instance_ball()

func instance_ball():
	var ball = preload("res://ball.tscn").instantiate()
	await get_tree().create_timer(3.0).timeout
	add_child(ball, true)
	ball.position = get_window().size / 2
