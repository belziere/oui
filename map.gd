extends Node2D
onready var Mob = $TileMap/Mob
onready var Player = $TileMap/Player

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	_on_Player_checkpos()
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Player_checkpos():
	var Playerpos = Player.get_position();