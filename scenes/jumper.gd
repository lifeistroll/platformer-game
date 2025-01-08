extends AnimatableBody2D

@onready var jAnimate: AnimatedSprite2D = $jAnimate

func _on_area_2d_body_entered(body):
	if body is CharacterBody2D:
		jAnimate.play("jump")
		body.velocity.y = -600

func _on_area_2d_body_exited(body):
	if body is CharacterBody2D:
		jAnimate.play("idle")
	
