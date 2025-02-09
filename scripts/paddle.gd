extends RigidBody2D


var collider: CollisionShape2D
var sprite: Sprite2D

var starting_x: int
var collider_starting_x: int
var sprite_staring_x: int

func _ready() -> void:
	print("Children: ")
	for child in get_children():
		var id = child.rpc_id
		var index = child.get_index()

		print("RPC ID: " + str(id))
		print("Index: " + str(index))
		print(str(child))
	
	collider = get_node("Collision") as CollisionShape2D
	
	print("Found collider: " + str(collider))
	
	sprite = get_node("Sprite") as Sprite2D

	print("Found sprite: " + str(sprite))
	
	starting_x = position.x
	collider_starting_x = collider.position.x
	sprite_staring_x = collider.position.x
	
	print("Starting x: " + str(starting_x))
	
	pass


func _process(delta: float) -> void:
	self.position.x = starting_x
	collider.position.x = collider_starting_x
	sprite.position.x = sprite_staring_x

	var is_computer = get_meta("computer")
	
	print("Paddle is computer: " + str(is_computer))

	if (is_computer):
		computer_move()
		return

	var direction: Vector2

	if Input.is_action_pressed("ui_up"):
		print("Player is moving up.")
		direction = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		print("Player is moving down.")
		direction = Vector2.DOWN
	else:
		return
	
	var force = direction * 45000
	
	self.apply_force(force)
	
	pass

func computer_move():
	var ball = get_parent().get_node("Ball") as RigidBody2D
	
	var target_y = ball.position.y
	var current_y = self.position.y
	
	var direction: Vector2
	if (target_y > current_y):
		direction = Vector2(0, 1)
	elif (target_y < current_y):
		direction = Vector2(0, -1)
	else:
		return
		
	var force = 45000 * direction
	
	self.apply_force(force)
	
	pass
