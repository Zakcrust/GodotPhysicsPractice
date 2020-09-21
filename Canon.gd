extends Node2D


var canon_ball_scene : PackedScene = load("res://CanonBall.tscn")

func _process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_just_pressed("fire"):
		_fire_canon_ball()



func _fire_canon_ball() -> void:
	var new_canon_ball = canon_ball_scene.instance()
	new_canon_ball.transform = $BulletPoint.global_transform
	get_parent().add_child(new_canon_ball)
