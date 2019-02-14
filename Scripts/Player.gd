extends KinematicBody2D

#onready var Mob = $ TileMap/Mob
#onready var Player = $ TileMap/Player

export (int) var speed 
var screensize
signal checkpos
signal PlaceTour

func _ready():
	screensize = get_viewport_rect().size
	
func _physics_process(delta):
	move_and_collide(Vector2(0, 0))
	var velocity = Vector2() 
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		position += velocity * delta
		position.x = clamp(position.x, 0, screensize.x)
		position.y = clamp(position.y, 0, screensize.y)
	#if Input.is_action_just_pressed("ui_accept"): #TestCheckPos
		#emit_signal("checkpos");
	if Input.is_action_just_pressed("ui_accept"):
		emit_signal("PlaceTour")
		print("2");
		
	
