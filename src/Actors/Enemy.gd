extends KinematicBody2D

func _ready():
	position.x = get_viewport_rect().size.x - get_parent().get_node("Player").position.x
