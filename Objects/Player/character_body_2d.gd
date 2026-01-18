extends CharacterBody2D
@onready var _healthBar = get_tree().get_nodes_in_group("PlayerHurtBox")[0].get_node("BossHealthBar") #NOTE: high chance of breaking: will break if more nodes are added to playerhurtbox group
var ATTACKS: Array[Callable] = [Callable(self, "spawn"), Callable(self, "tentacle")]
@onready var AniPlayer = $AnimationPlayer

func _ready() -> void:
	pass

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_select"):
		attack()
func takeDamage(damage: float) -> void:
	print("Hitpoints before %s" %_healthBar.value)
	_healthBar.value -= damage
	print("Hitpoints after %s" %_healthBar.value)

func attack() -> void: 
	var currentAttack = ATTACKS.pick_random()
	#print(currentAttack)
	currentAttack.call()

func spawn() -> void:
	print ("spawn called")
	
func tentacle() -> void:
	print ("tentacle called")
	AniPlayer.play("tentacle")
