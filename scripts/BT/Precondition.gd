class_name Precondition
extends Decorator

var owner

func _init(o, behaviour: Behaviour).(behaviour):
	owner = o

func update() -> int:
	return Status.FAILURE
