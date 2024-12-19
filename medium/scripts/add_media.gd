extends Control

# MUSIC FIELDS

@export var titleField : LineEdit
@export var artistField : LineEdit
@export var yearField : LineEdit
@export var ratingField : LineEdit
var musicFields : Array = []

func _ready():
	musicFields = [titleField, artistField, yearField, ratingField]
func _on_add_button_up() -> void:
	if yearField.text.is_valid_int() and ratingField.text.is_valid_int():
		print("SICK")
		var numYear : int = yearField.text as int
		var numRating : int = ratingField.text as int
	else:
		print("Error: Non Int given for int only input.")
		return

	Library.createAlbum(	[titleField.text,artistField.text,yearField.text,ratingField.text])
	clearFields(musicFields)
	Library.debugAlbumLibrary()
	
func clearFields(fieldArr : Array = []):
	for field in fieldArr:
		if field is LineEdit:
			field.clear()
