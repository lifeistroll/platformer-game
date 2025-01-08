extends CharacterBody2D

const SPEED = 100.0
const JUMP_VELOCITY = -400.0

@onready var pAnimate: AnimatedSprite2D = $pAnimate

func jump():
	velocity.y = JUMP_VELOCITY

func side_jump(x):
	velocity.y = JUMP_VELOCITY
	velocity.x = x

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		jump()

	# Get the input direction and handle the movement/deceleration.
	var direction := Input.get_axis("move_left", "move_right")

	# Flip the sprite based on direction
	if direction < 0:
		pAnimate.flip_h = false
	elif direction > 0:
		pAnimate.flip_h = true

	# Play appropriate animations
	if is_on_floor():
		if direction == 0:
			pAnimate.play("idle")
		else:
			pAnimate.play("run")

	# Apply horizontal movement
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
