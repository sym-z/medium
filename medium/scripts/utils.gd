extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
# Could refactor this to be generalized
func parseAlbumCsv(filePath : String) -> Array:
	var data = []
	var file = FileAccess.open(filePath,FileAccess.READ)
	# Grab Header
	var header = file.get_csv_line()
	# Loop and grab albums
	var content = file.get_csv_line()
	while !file.eof_reached():
		# Make an Album per line
		Library.createAlbum(content)
		content = file.get_csv_line()
	return data
