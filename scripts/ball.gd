extends Node2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	var random = rng.randf()
	
	var direction: Vector2
	if (random > 0.5):
		direction = Vector2.RIGHT
	else:
		direction = Vector2.LEFT
	
	var otherRandom = rng.randf()
	
	var vertical: Vector2
	if (	otherRandom > 0.5):
		direction += Vector2.UP
	else:
		direction += Vector2.DOWN
	
	print("Selected random direction for the ball: " + str(direction))
	
	const id = 0
	
	var child = self.get_child(id)

	if (child == null):
		return
	
	print("Child with ID " + str(id) + ": " + str(child))
	
	if (not is_instance_of(child, RigidBody2D)):
		return
		
	var body = child as RigidBody2D
	
	var force = direction * 25000
	
	print("Applying force: " + str(force))
	
	body.apply_force(force)

func _process(delta: float) -> void:
	pass
