extends Label

func _ready():
	rect_position.x = get_viewport_rect().size.x - get_parent().get_node("PlayerScore").rect_position.x - rect_size.x


func _on_Ball_enemy_score():
	text = String(int(text) + 1)
