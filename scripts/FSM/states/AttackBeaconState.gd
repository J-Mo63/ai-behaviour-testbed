class_name AttackBeaconState
extends State

var target

func on_enter():
	transitions = [BeaconDisappearedTransition.new()]
	target = agent_body.get_tree().get_nodes_in_group("beacon")[0]

func on_update(delta):
	agent_body.agent_movement.move_towards(agent_body, target, delta)

func on_exit():
	pass
