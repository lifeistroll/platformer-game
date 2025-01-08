extends Area2D

@onready var game_manager = $"../game_manager"


var checkpoint_manager
var player

func _ready():
	checkpoint_manager = get_parent().get_node("checkpoint_manager")
	player = get_parent().get_node("Player")
	
func _on_body_entered(body):
	if body.name == "Player":
		killPlayer()
		game_manager.decrease_lives()

func killPlayer():
	player.position = checkpoint_manager.last_location
