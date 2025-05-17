extends Control


func _on_single_pressed() -> void:
	get_tree().change_scene_to_file("res://main/singleplayer.tscn")


func _on_multi_pressed() -> void:
	get_tree().change_scene_to_file("res://main/multiplayer.tscn")
