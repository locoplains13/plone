extends Sprite2D

var score_player2 = 0
var score_player1 = 0
@export var score_player2_label: Label
@export var score_player1_label: Label

func remove_ball():
	get_node(NodePath(get_child(get_child_count()-1).name)).free()

func _on_winzone_body_entered(_body: Node2D) -> void:
	score_player2 += 1
	score_player2_label.text = str(score_player2)
	remove_ball()
	instance_ball()

func _on_winzone_2_body_entered(_body: Node2D) -> void:
	score_player1 += 1
	score_player1_label.text = str(score_player1)
	remove_ball()
	instance_ball()

func instance_ball():
	var ball = preload("res://ball/ball.tscn").instantiate()
	await get_tree().create_timer(3.0).timeout
	add_child(ball, true)
	ball.add_to_group("ball")
	ball.position = get_window().size / 2
