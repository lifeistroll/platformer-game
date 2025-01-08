extends Area2D

var game_manager

func _ready():
	game_manager = get_parent().get_parent().get_node("game_manager")

func _on_body_entered(body):
	if body.name == "Player":
		queue_free()
		game_manager.add_points()
