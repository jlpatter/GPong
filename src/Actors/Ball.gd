extends KinematicBody2D

const SPEED = 10000

signal player_score
signal enemy_score

var start_position: Vector2
var direction = (Vector2.LEFT + Vector2.UP).normalized()

func _ready():
	start_position = position

func _physics_process(delta):
	if get_slide_count() > 0:
		direction.x = -direction.x
		direction.y = randf() * 2.0 - 1.0
		direction = direction.normalized()
	
	if position.y < 0.0 or position.y > get_viewport_rect().size.y:
		direction.y = -direction.y
	
	if position.x < 0.0:
		emit_signal("enemy_score")
		position = start_position
	
	if position.x > get_viewport_rect().size.x:
		emit_signal("player_score")
		position = start_position
	
	move_and_slide(direction * SPEED * delta)
