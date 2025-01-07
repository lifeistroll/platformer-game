extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("OVER")
	Engine.time_scale = 0.4
	body.get_node("pColl").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
