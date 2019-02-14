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
	
	pass
	


func _on_Player_PlaceTour():
	var Playerpos = Player.get_global_position();
	var TourScene = load("res://Scenes/Tour.tscn")
	var Tour = TourScene.instance()
	add_child(Tour)
	Tour.position = Playerpos
	