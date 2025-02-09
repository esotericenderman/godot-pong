extends RigidBody2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
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
	pass
