extends Area2D

var checkpoint_manager

func _ready():
	checkpoint_manager = get_parent()

func _on_body_entered(body):
	if body.name == "Player":
		checkpoint_manager.last_location = $RespawnPoint.global_position
