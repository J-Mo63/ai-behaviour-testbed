class_name PatrolDoorState
extends State

var target

func _init(owner).(owner):
	pass

func on_enter():
	target = owner.get_tree().get_nodes_in_group("door")[0]

func on_update(delta):
	owner.move_towards(target, delta)

func on_exit():
	pass
