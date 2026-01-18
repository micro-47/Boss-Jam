extends CharacterBody2D
@onready var _healthBar = get_tree().get_nodes_in_group("PlayerHurtBox")

const ATTACKS = ["spawns", "tentacles"]

func _ready() -> void:
	pass

func takeDamage(damage: float) -> void:
	print(_healthBar)
	#print("Hitpoints before %s" %_healthBar.value)
	#_healthBar.value -= damage
	#print("Hitpoints after %s" %_healthBar.value)
