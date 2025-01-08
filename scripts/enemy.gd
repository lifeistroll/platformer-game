extends RigidBody2D

@onready var game_manager: Node = $"../game_manager"
@onready var player: CharacterBody2D = $"../Player"

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		var y_delta = position.y - body.position.y
		if (y_delta > 17):
			queue_free()
			body.jump()
		else:
			game_manager.decrease_lives()
