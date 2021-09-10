extends Label

func _on_Ball_player_score():
	text = String(int(text) + 1)
