extends RigidBody2D


var right_wall: RigidBody2D
var left_wall: RigidBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	right_wall = get_parent().get_node("RightWall")
	left_wall = get_parent().get_node("LeftWall")
	
	contact_monitor = true
	max_contacts_reported = 50
	
	reset()

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
			reset()
		elif object == left_wall:
			reset()
			print("Computer's point")
	
	pass

func reset():
	var parent = get_parent().get_node("Background") as Sprite2D
	
	var screen_size = get_viewport_rect().size
	self.position = screen_size / 2
	
	var random = rng.randf()
	
	var angle = deg_to_rad(rng.randf_range(-45, 45)) # Random angle between -45 and 45 degrees
	var direction = Vector2.RIGHT.rotated(angle) if rng.randi() % 2 == 0 else Vector2.LEFT.rotated(angle)

	print("Selected random direction for the ball: " + str(direction))
	
	const id = 0

	var force = direction * 600
	
	print("Applying force: " + str(force))

	self.angular_velocity = 0
	self.linear_velocity = force

	pass
