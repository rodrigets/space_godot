extends Node2D

onready var animRobo = get_node("Robo1/AnimationPlayer")

func _ready():
	set_process(true)
	animRobo.play("move")

func _on_Area2D_body_enter( body ):
	print('teste')
	animRobo.stop()
	animRobo.play("rescue")
	queue_free()
