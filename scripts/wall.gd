extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	contact_monitor = true
	max_contacts_reported = 50

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var colliding = get_colliding_bodies()
	
	if len(colliding) != 0:
		print("Something is colliding with the wall...")
	
	pass
