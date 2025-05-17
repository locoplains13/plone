extends Sprite2D

var score_player2 = 0
var score_player1 = 0
@export var score_player2_label: Label
@export var score_player1_label: Label

func _process(delta: float) -> void:
	pass

func _ready() -> void:
	instance_ball()

func remove_ball():
	get_tree().get_nodes_in_group("ball")[0].free()

func _on_winzone_body_entered(_body: Node2D) -> void:
	score_player2 += 1
	score_player2_label.text = str(score_player2)
	$"win-sound".play()
	remove_ball()
	instance_ball()

func _on_winzone_2_body_entered(_body: Node2D) -> void:
	score_player1 += 1
	score_player1_label.text = str(score_player1)
	$"win-sound".play()
	remove_ball()
	instance_ball()

func instance_ball():
	await get_tree().create_timer(3.0).timeout
	var ball = preload("res://ball/ball.tscn").instantiate()
	add_child(ball, true)
	ball.add_to_group("ball")
	$controls1.hide()
	if len(get_tree().get_nodes_in_group("paddle")) == 2:
		$controls2.hide()
	ball.position.x = 652.11
	ball.position.y = 338.41

func open_menu(delta: float):
	if Input.is_action_just_pressed("ui_cancel"):
		print("open menu")
