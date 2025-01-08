extends AnimatableBody2D

@onready var jAnimate: AnimatedSprite2D = $jAnimate

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		jAnimate.play("jump")
		body.velocity.y = -650

func _on_area_2d_body_exited(body):
	if body.name == "Player":
		jAnimate.play("idle")
	
