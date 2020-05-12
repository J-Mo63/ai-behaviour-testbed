class_name BeaconVisiblePrecondition
extends Precondition

var beacon

func _init(o, child).(o, child):
	pass

func on_initialise() -> void:
	beacon = owner.get_tree().get_nodes_in_group("beacon")[0]
	.on_initialise()

func update() -> int:
	if beacon and beacon.visible:
		return child.tick()
	else:
		return Status.FAILURE
