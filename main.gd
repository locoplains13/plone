extends Sprite2D

var score_cpu = 0
var score_player = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_winzone_body_entered(body: Node2D) -> void:
	score_cpu += 1
	print(score_cpu)


func _on_winzone_2_body_entered(body: Node2D) -> void:
	score_player += 1
	print(score_player)
