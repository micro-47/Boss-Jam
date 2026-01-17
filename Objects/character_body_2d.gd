extends CharacterBody2D
@export var _healthBar: Node


func _ready() -> void:
	pass

func takeDamage(damage: float) -> void:
	print("Hitpoints before %s" %_healthBar.value)
	_healthBar.value -= damage
	print("Hitpoints after %s" %_healthBar.value)
