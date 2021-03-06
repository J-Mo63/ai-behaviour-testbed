class_name PlanningState
extends State

var blank_state = []
var planner = GoapPlanner.new()
var agent_profile = GoapAgent

func _init(owner).(owner):
	for _i in range(GoapPlanner.StateConditions.size()):
		blank_state.append(null)
	agent_profile = agent_profile.new(owner)
	owner.blackboard.plan = []

func on_enter():
	pass

func on_update():
	var new_plan = planner.generate_plan(generate_current_state(), agent_profile)
	if new_plan and owner.blackboard.plan.hash() != new_plan.hash():
		owner.blackboard.plan = new_plan

func on_exit():
	pass

func generate_current_state():
	var current_state = blank_state.duplicate()
	current_state[GoapPlanner.StateConditions.ENEMY_ALIVE] = owner.get_tree().get_nodes_in_group("enemy")[0].visible
	current_state[GoapPlanner.StateConditions.SWORD_AVAILABLE] = owner.get_tree().get_nodes_in_group("sword")[0].visible
	current_state[GoapPlanner.StateConditions.SWORD_ACQUIRED] = owner.blackboard.get("sword") == true
	return current_state
