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
	
	collider = get_children()[0] as CollisionShape2D
	
	print("Found collider: " + str(collider))
	
	sprite = collider.get_children()[0] as Sprite2D

	print("Found sprite: " + str(sprite))
	
	starting_x = position.x
	collider_starting_x = collider.position.x
	sprite_staring_x = collider.position.x
	
	print("Starting x: " + str(starting_x))
	
	pass


func _process(delta: float) -> void:
	print("Resetting x: " + str(starting_x))

	self.position.x = starting_x
	collider.position.x = collider_starting_x
	sprite.position.x = sprite_staring_x

	var direction: Vector2

	if Input.is_action_pressed("ui_up"):
		print("Player is moving up.")
		direction = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		print("Player is moving down.")
		direction = Vector2.DOWN
	else:
		return
	
	var force = direction * 250
	
	self.apply_force(force)
	
	pass
