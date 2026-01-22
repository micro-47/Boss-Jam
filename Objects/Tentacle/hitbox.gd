extends Area2D

@onready var AniPlayer = $AnimationPlayer
var _overlapping
var damage = 10

func _ready() -> void:
	AniPlayer.play("tentacle")
	print("initiated tentacle node")
	await AniPlayer.animation_finished
	self.queue_free()

func _physics_process(_delta: float) -> void:
	attack()

func attack() -> void:
		_overlapping = get_overlapping_bodies()
		for body in _overlapping:
			if body.is_in_group("PlayerHurtBox"):
				body.takeDamage(damage)
				_overlapping.erase(body)
			
