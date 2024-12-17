extends Control

# MUSIC FIELDS
@export var titleField : LineEdit
@export var artistField : LineEdit
@export var yearField : LineEdit
@export var ratingField : LineEdit

func _on_add_button_up() -> void:
	var numYear : int = yearField.text as int
	var numRating : int = ratingField.text as int
	Library.createAlbum(	titleField.text,artistField.text,numYear,numRating)
