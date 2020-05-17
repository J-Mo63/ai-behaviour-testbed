class_name AttackBeaconGoapAction
extends GoapAction

func _init(o).(o):
	target = owner.get_tree().get_nodes_in_group("beacon")[0]

func perform():
	if owner.is_near(target):
		target.attack()