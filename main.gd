extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_delay_timer_timeout():
	print("Reloading scene")
	get_tree().reload_current_scene()
