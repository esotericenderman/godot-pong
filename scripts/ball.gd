extends RigidBody2D


var rng = RandomNumberGenerator.new()

var right_wall: RigidBody2D
var left_wall: RigidBody2D


func _ready() -> void:
	right_wall = get_parent().get_node("RightWall")
	left_wall = get_parent().get_node("LeftWall")
	
	contact_monitor = true
	max_contacts_reported = 50
	
	reset("none")

func _process(_delta: float) -> void:
	var colliding = get_colliding_bodies()
	
	if len(colliding) == 0:
		return
	
	for object in colliding:
		if object == right_wall:
			reset("player")
			return
		elif object == left_wall:
			reset("computer")
			return

func reset(winner: String) -> void:	
	var parent = get_parent().get_node("Background") as Sprite2D
	
	var width = parent.texture.get_size().x * parent.scale.x
	var height = parent.texture.get_size().y * parent.scale.x
	
	transform.origin = Vector2(0, 0)
	global_translate(Vector2(width / 2, height / 2))
	
	var angle = deg_to_rad(rng.randf_range(-45, 45))
	var direction = Vector2.RIGHT.rotated(angle) if rng.randi() % 2 == 0 else Vector2.LEFT.rotated(angle)

	linear_velocity = Vector2.ZERO
	angular_velocity = 0

	linear_velocity = direction * 450
	
	var score = get_parent().get_node("Score") as RichTextLabel
	
	if winner == "player":
		score.player_points += 1
	elif winner == "computer":
		score.computer_points += 1
	
	score.text = str(score.player_points) + " | " + str(score.computer_points)
