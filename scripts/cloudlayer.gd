extends ParallaxLayer

var cloud_speed = -15

@onready var cloud_sprite = $clouds

func _process(delta):
	# Move the cloud horizontally by modifying its position
	cloud_sprite.position.x += cloud_speed * delta
	
	# Optionally, reset the position to create a looping effect
	if cloud_sprite.position.x > cloud_sprite.texture.get_width():
		cloud_sprite.position.x = -cloud_sprite.texture.get_width()
