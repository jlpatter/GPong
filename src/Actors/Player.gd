extends KinematicBody2D

const SPEED = 10000

func _physics_process(delta):
	var y_direction = 0.0
	
	if position.y - $CollisionShape2D.shape.extents.y > 0.0:
		y_direction -= Input.get_action_strength("move_up")
	
	if position.y + $CollisionShape2D.shape.extents.y < get_viewport_rect().size.y:
		y_direction += Input.get_action_strength("move_down")
	
	var direction = Vector2(0.0, y_direction)
	
	move_and_slide(direction * SPEED * delta)
