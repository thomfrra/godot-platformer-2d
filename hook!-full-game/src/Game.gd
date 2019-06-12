extends Node

onready var player : Player = $Player


func _ready() -> void:
	CheckpointUtils.mark_visited_checkpoints()
	var last_visited_position := Vector2(CheckpointUtils.checkpoints.last_visited_x,\
		CheckpointUtils.checkpoints.last_visited_y)
	if last_visited_position != Vector2.ZERO:
		player.global_position = last_visited_position


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("restart"):
		get_tree().reload_current_scene()
