extends KinematicBody2D
var playerLastPos
var hit_pos

func _ready():
	pass

func _process(delta):
	var Player = get_tree().get_root().get_node("Map").get_node("TileMap").get_node("Player")
	if Player:
		var space_state = get_world_2d().direct_space_state
		var result = space_state.intersect_ray(Player.position, global_position, [self], collision_mask)
		if result:
			print(result.position)
			hit_pos = result.position
			#if result.:
				#playerLastPos = result.position
func _draw():
	hit_pos = get_node(".").hit_pos
	draw_line(Vector2(), hit_pos - global_position, Color(255, 0, 0),1)
	#	var playerLastPos = result.position;
	#if result.collider == Player:
		#print('vu')
		#emit_signal("PlayerSeen");
		
#func _follow_player():
