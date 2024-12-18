extends Control

# MUSIC FIELDS

@export var titleField : LineEdit
@export var artistField : LineEdit
@export var yearField : SpinBox
@export var ratingField : SpinBox
var musicFields : Array = []

func _ready():
	musicFields = [titleField, artistField, yearField, ratingField]
func _on_add_button_up() -> void:
	var numYear : int = yearField.get_line_edit().text as int
	var numRating : int = ratingField.get_line_edit().text as int
	Library.createAlbum(	[titleField.text,artistField.text,yearField.get_line_edit().text,ratingField.get_line_edit().text])
	clearFields(musicFields)
	Library.debugAlbumLibrary()
	
func clearFields(fieldArr : Array = []):
	for field in fieldArr:
		if field is LineEdit:
			field.clear()
