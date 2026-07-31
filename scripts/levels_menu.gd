extends Control


@onready var lock_lev_2: TextureRect = $lock_lev_2
@onready var lock_lev_3: TextureRect = $lock_lev_3

func _ready() -> void:
	Global.score = 0
	

func _process(delta: float) -> void:
	if Global.win >= 1:
		if is_instance_valid(lock_lev_2):
			lock_lev_2.queue_free()
	 
	if Global.win >= 2:
		if is_instance_valid(lock_lev_3):
			lock_lev_3.queue_free()

func _on_level_1_pressed() -> void:
	TransitionLayer._transition()
	await TransitionLayer.transitioned
	get_tree().change_scene_to_file("res://scenes/levels/level_1.tscn")


func _on_level_2_pressed() -> void:
	TransitionLayer._transition()
	await TransitionLayer.transitioned
	get_tree().change_scene_to_file("res://scenes/levels/level_2.tscn")


func _on_level_3_pressed() -> void:
	TransitionLayer._transition()
	await TransitionLayer.transitioned
	get_tree().change_scene_to_file("res://scenes/levels/level_3.tscn")
