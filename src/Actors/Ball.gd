extends KinematicBody2D

const SPEED = 10000

var direction = (Vector2.LEFT + Vector2.UP).normalized()

func _physics_process(delta):
	if get_slide_count() > 0:
		direction.x = -direction.x
		direction.y = randf() * 2.0 - 1.0
		direction = direction.normalized()
	
	if position.y < 0.0 or position.y > get_viewport_rect().size.y:
		direction.y = -direction.y
	
	move_and_slide(direction * SPEED * delta)
