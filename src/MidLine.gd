extends Line2D

func _ready():
	var my_list = PoolVector2Array()
	my_list.append(Vector2(get_viewport_rect().size.x / 2.0, 0.0))
	my_list.append(Vector2(get_viewport_rect().size.x / 2.0, get_viewport_rect().size.y))
	
	points = my_list
