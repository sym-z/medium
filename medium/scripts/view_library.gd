extends Control
@export var headerBox : HBoxContainer
@export var gridView : GridContainer
@export var cellFontSize : int = 32
@export var labelFont : Font 

@export var gridCellScene : PackedScene

func _ready() -> void:
	addLabel("TITLE", headerBox)
	addLabel("ARTIST", headerBox)
	addLabel("YEAR", headerBox)
	addLabel("RATING", headerBox)
	for album in Library.albumLibrary:
		addLabel(album.title, gridView)
		addLabel(album.artist,gridView)
		addLabel(str(album.year), gridView)
		addLabel(str(album.rating), gridView)

func addLabel(text :String, dest:Container):
	var cell = gridCellScene.instantiate()
	cell.setLabelText(text)
	dest.add_child(cell)
