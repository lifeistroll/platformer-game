extends Node

@onready var score: Label = $"../UI/Score/Label"
@export var hearts : Array[Node]

var lives = 3
var points = 0

func decrease_lives():
	lives -= 1
	for h in 3:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if (lives == 0):
		get_tree().reload_current_scene()

func add_points():
	points += 1
	score.text = "SCORE: " + str(points)
