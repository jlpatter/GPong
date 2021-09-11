extends KinematicBody2D

const SPEED = 5000

func _ready():
	position.x = get_viewport_rect().size.x - get_parent().get_node("Player").position.x

func _physics_process(delta):
	var y_direction = 0.0
	if get_parent().get_node("Ball").position.y > position.y:
		y_direction = 1.0
	elif get_parent().get_node("Ball").position.y < position.y:
		y_direction = -1.0
	
	move_and_slide(Vector2(0.0, y_direction) * SPEED * delta)
