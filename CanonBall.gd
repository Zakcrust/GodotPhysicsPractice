extends RigidBody2D

var force : int = 1000


func _ready():
	print(rotation_degrees)
	linear_velocity = transform.x * force
	$Timer.start()
	


func _on_Timer_timeout():
	var normalised_position = position.normalized()
	print(normalised_position)
#	linear_velocity = Vector2(normalised_position.x, sin(rotation)) * force	
#	linear_velocity = linear_velocity.rotated(sin(rotation))
