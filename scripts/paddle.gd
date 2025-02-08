extends RigidBody2D


var starting_x

func _ready() -> void:
	starting_x = position.x
	
	print("Starting x: " + str(starting_x))
	
	pass


func _process(delta: float) -> void:
	print("Resetting x: " + str(starting_x))

	self.position.x = starting_x

	var direction: Vector2

	if Input.is_action_pressed("ui_up"):
		print("Player is moving up.")
		direction = Vector2.UP
	elif Input.is_action_pressed("ui_down"):
		print("Player is moving down.")
		direction = Vector2.DOWN
	else:
		return
	
	var force = direction * 50
	
	self.apply_force(force)
	
	pass
