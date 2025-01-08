extends Area2D

@onready var game_manager = $"../game_manager"
@onready var checkpoint_manager= $"../checkpoint_manager"
@onready var player = $"../Player"

func _on_body_entered(body):
	if body.name == "Player":
		killPlayer()
		game_manager.decrease_lives()

func killPlayer():
	player.position = checkpoint_manager.last_location
