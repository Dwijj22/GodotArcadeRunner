extends Node2D

@export var obstacle_scene: PackedScene
@export var min_spawn_time: float = 1.0
@export var max_spawn_time: float = 2.0
@export var spawn_x_offset: float = 600.0 # ahead of player
@export var spawn_y: float = 0.0

@onready var _timer: Timer = $Timer
@onready var _player: Node2D = get_parent().get_node("Player")

func _ready():
	_reset_timer()

func _on_Timer_timeout():
	_spawn_obstacle()
	_reset_timer()

func _spawn_obstacle():
	if obstacle_scene == null:
		return
	var obstacle: Area2D = obstacle_scene.instantiate()
	var spawn_pos = _player.global_position
	spawn_pos.x += spawn_x_offset
	spawn_pos.y = spawn_y
	obstacle.global_position = spawn_pos
	get_parent().add_child(obstacle)

func _reset_timer():
	_timer.wait_time = randf_range(min_spawn_time, max_spawn_time)
	_timer.start()
