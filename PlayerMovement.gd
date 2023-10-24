extends RigidBody3D

@export var move_speed = 2.0

func _physics_process(delta):
	
	if Input.is_key_pressed(KEY_LEFT) or Input.is_key_pressed(KEY_A):
		linear_velocity.x = -move_speed
	elif Input.is_key_pressed(KEY_RIGHT) or Input.is_key_pressed(KEY_D):
		linear_velocity.x = move_speed

func _on_body_entered(body):
	if body.is_in_group("Tree"):
		get_tree().reload_current_scene()
	elif body.is_in_group("finish"):
		get_node("/root/Main/finish line").show_label()
		
		# Start the timer with a 3-second delay
		get_node("/root/Main/DelayTimer").wait_time = 3.0
		get_node("/root/Main/DelayTimer").start()

func _on_delay_timer_timeout():
	get_tree().reload_current_scene()
