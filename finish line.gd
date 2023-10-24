extends StaticBody3D



# Reference to the CanvasLayer (set in the Inspector)
@export var control_node : Control

func _ready():
	# Initially, the Label is hidden
	control_node.visible = false

# Function to show the Label
func show_label():
	control_node.visible = true

# Function to hide the Label
func hide_label():
	control_node.visible = false
