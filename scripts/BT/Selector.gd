class_name Selector
extends Composite

var current_child_idx

func _init(behaviours: Array).(behaviours):
	pass

func on_initialise() -> void:
	current_child_idx = 0
	.on_initialise()

func update() -> int:
	while true:
		var status = children[current_child_idx].tick()
		if status != Status.FAILURE:
			return status
		current_child_idx += 1
		if current_child_idx >= children.size():
			return Status.FAILURE
	return Status.DEFAULT
