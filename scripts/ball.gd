extends RigidBody2D


var right_wall: RigidBody2D
var left_wall: RigidBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	right_wall = get_parent().get_node("RightWall")
	left_wall = get_parent().get_node("LeftWall")
	
	contact_monitor = true
	max_contacts_reported = 50
	
	reset("none")

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
			reset("player")
		elif object == left_wall:
			reset("computer")
			print("Computer's point")
	
	pass

func reset(winner: String) -> void:	
	self.freeze = true  # Temporarily disable physics
	var parent = get_parent().get_node("Background") as Sprite2D
	
	transform.origin.x = 0
	transform.origin.y = 0
	
	var width = parent.texture.get_size().x * parent.scale.x
	var height = parent.texture.get_size().y * parent.scale.x
	
	global_translate(Vector2(width / 2, height / 2))
	
	print("Background width: " + str(width))
	print("Background height: " + str(height))
	
	self.inertia = 0

	# Generate a random angle between -45 and 45 degrees
	var angle = deg_to_rad(rng.randf_range(-45, 45))
	var direction = Vector2.RIGHT.rotated(angle) if rng.randi() % 2 == 0 else Vector2.LEFT.rotated(angle)

	# Set a constant speed
	var speed = 300  
	self.linear_velocity = Vector2.ZERO  # Reset any existing velocity
	self.angular_velocity = 0  # Reset any spin

	print("Ball reset with direction: ", direction, " and speed: ", speed)

	self.freeze = false  # Re-enable physics
	self.linear_velocity = direction * speed
	
	var score = get_parent().get_node("Score") as RichTextLabel
	
	if winner == "player":
		score.player_points += 1
		pass
	elif winner == "computer":
		score.computer_points += 1
		pass
		
	score.text = str(score.player_points) + " | " + str(score.computer_points)
