class_name DoEnemyAttackTask
extends PrimitiveTask

func _init():
	operator = UseObjectOperator.new()
	effects = {
		HTNSensor.WorldStateProperties.ENEMY_ALIVE: false,
		HTNSensor.WorldStateProperties.WEAPON_AVAILABLE: false,
	}

func precondition_valid(working_worldstate: Array) -> bool:
	return working_worldstate[HTNSensor.WorldStateProperties.ENEMY_ALIVE] == true and working_worldstate[HTNSensor.WorldStateProperties.WEAPON_ACQUIRED] == true

func operate(owner) -> bool:
	owner.blackboard.weapon = false
	owner.animation.start_anim("unarmed")
	return operator.operate(owner, owner.get_tree().get_nodes_in_group("enemy")[0], "attack")
