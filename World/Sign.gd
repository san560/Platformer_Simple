extends Node

@onready var player = $Player
@onready var text_node = $Label

var distance_threshold = 200.0

func _process(delta):
	# Calculate the distance between the player and the text node
	var distance = player.global_position.distance_to(self.global_position)
	
	# Show or hide the text node based on the distance
	if distance <= distance_threshold:
		text_node.visible = true
	else:
		text_node.visible = false
