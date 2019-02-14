extends Node2D


# Internal node references
onready var TileMap = $TileMap
onready var Player = $Player
onready var Mob = $Mob


# Performed when added to scene
func _ready():

	# Connects the whistle to creating a new path
	Player.connect("BOOP", self, "_calculate_new_path")


# Calculates a new path and gives to sidekick
func _calculate_new_path():

	# Finds path
	var path = TileMap.get_path(Mob.position, Player.position)

	# If we got a path...
	if path:
		
		# Remove the first point (it's where the sidekick is)
		path.remove(0)
		
		# Sets the sidekick's path
		Mob.path = path