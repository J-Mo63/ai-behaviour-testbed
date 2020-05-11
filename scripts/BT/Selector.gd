class_name Selector
extends Composite

func _init(behaviours: Array).(behaviours):
	pass

func update() -> int:
	for child in children:
		var status = child.update()
		if status == Status.SUCCESS or status == Status.RUNNING:
			return status
	on_terminate(Status.FAILURE)
	return Status.FAILURE
