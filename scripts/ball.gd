extends RigidBody2D


var right_wall: RigidBody2D
var left_wall: RigidBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	right_wall = get_parent().get_node("RightWall")
	left_wall = get_parent().get_node("LeftWall")
	
	contact_monitor = true
	max_contacts_reported = 50
	
	var parent = get_parent().get_node("Background") as Sprite2D
	
	var width = parent.texture.get_size().x * parent.scale.x
	var height = parent.texture.get_size().y * parent.scale.x
	
	print("Background width: " + str(width))
	print("Background height: " + str(height))
	
	self.position = Vector2(width / 2, height / 2)
	
	var random = rng.randf()
	
	var direction: Vector2
	if (random > 0.5):
		direction = Vector2.RIGHT
	else:
		direction = Vector2.LEFT
	
	var other_random = rng.randf()
	
	var vertical: Vector2
	if (	other_random > 0.5):
		direction += Vector2.UP
	else:
		direction += Vector2.DOWN

	print("Selected random direction for the ball: " + str(direction))
	
	const id = 0

	var force = direction * 27000
	
	print("Applying force: " + str(force))

	self.apply_force(force)

func _process(delta: float) -> void:
	var colliding = get_colliding_bodies()
	
	if len(colliding) != 0:
		print("Something is colliding with the ball...")
	else:
		return
	
	for object in colliding:
		print(str(object))
		pass
		
		if object == right_wall:
			print("Player's point")
		elif object == left_wall:
			print("Computer's point")
	
	pass
