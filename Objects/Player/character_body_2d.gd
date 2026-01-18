extends CharacterBody2D
@onready var _health = get_tree().get_nodes_in_group("PlayerHurtBox")[0].get_node("BossHealthBar").value #NOTE: high chance of breaking: will break if more nodes are added to playerhurtbox group

const ATTACKS = ["spawns", "tentacles"]

func _ready() -> void:
	pass

func takeDamage(damage: float) -> void:
	print(_health)
	#print("Hitpoints before %s" %_health)
	#_health -= damage
	#print("Hitpoints after %s" %_health)
