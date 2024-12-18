extends Control

func _on_add_button_up() -> void:
	call_deferred("toAddScene")
func toAddScene() -> void:
	get_tree().change_scene_to_file("res://scenes/add_media.tscn")

func _on_view_button_up() -> void:
	call_deferred("toAddScene")
func toViewScene() -> void:
	get_tree().change_scene_to_file("res://scenes/view_library.tscn")

func _on_stats_button_up() -> void:
	call_deferred("toAddScene")
func toStatsScene() -> void:
	get_tree().change_scene_to_file("res://scenes/stats.tscn")

func _on_options_button_up() -> void:
	call_deferred("toAddScene")
func toOptionsScene() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")

func _ready():
	Utils.parseAlbumCsv("res://data/data.csv")
	Library.debugAlbumLibrary()
