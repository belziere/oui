extends KinematicBody2D
var playerLastPos
export (int) var speed = 2
var velocity = Vector2()

func _ready():
	pass

func _process(delta):
	var Player = get_tree().get_root().get_node("Map").get_node("TileMap").get_node("Player")
	if Player:
		var playerPos = Player.global_position
		var space_state = get_world_2d().direct_space_state
		var result = space_state.intersect_ray(global_position, playerPos, [self], collision_mask)
		if result.collider.name == "Player":
			playerLastPos = result.position
			follow()
			velocity = (playerLastPos - global_position).normalized() * speed
			move_and_collide(velocity)
		else:
			playerLastPos = null
			
func follow():
	#look_at(playerLastPos)
	
	
	