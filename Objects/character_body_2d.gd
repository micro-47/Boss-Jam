extends CharacterBody2D
var Hitpoints = 100

func _ready() -> void:
	pass

func takeDamage(damage: float) -> void:
	print("Hitpoints before %s" %Hitpoints)
	Hitpoints -= damage
	print("Hitpoints after %s" %Hitpoints)
