class_name State_Walk extends State

@export var move_speed : float = 100.0
@onready var idle : State= $"../Idle"

## what happens when you (player) enter the state
func Enter() -> void:
	player.UpdateAnimation("Idle")
	pass
	
##what happens when you (player) exits the state
func Exit() -> void:
	
	pass

##what happens when proccess update in this state 
func Process (_delta : float) -> State:
	if player.direction == Vector2.ZERO:
		return idle
		
	player.velocity = player.direction * move_speed
	
	
	if player.SetDirection():
		player.UpdateAnimation('Walk')
	return null

##what happens during the physics proccess update in this state
func Physics (_delta : float) -> State:
	
	return null

##what happens with input events in this sate
func HandleInput (_event : InputEvent) -> State:
	
	return null
