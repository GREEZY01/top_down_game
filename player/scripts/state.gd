class_name State extends Node

##stores a referance to the player
static var player : Player

func _ready() -> void:
	pass # Replace with function body.


## what happens when you (player) enter the state
func Enter() -> void:
	
	pass
	
##what happens when you (player) exits the state
func Exit() -> void:
	
	pass

##what happens when proccess update in this state 
func Process (_delta : float) -> State:
	
	return null

##what happens during the physics proccess update in this state
func Physics (_delta : float) -> State:
	
	return null

##what happens with input events in this sate
func HandleInput (_event : InputEvent) -> State:
	
	return null
