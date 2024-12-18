extends Node

var albumLibrary : Array[Album] = []
class Album:
	var title : String
	var artist : String
	var year : int
	var rating : int
	func _init(arr : Array[String]) -> void:
		title = arr[0]
		artist = arr[1]
		year = arr[2] as int
		rating = arr[3] as int
		# TODO: Parse out the genres from the string, and add them to genres[]
		
	func debugPrint():
		print("TITLE: ", title)
		print("ARTIST: ", artist)
		print("YEAR: ", year)
		print("RATING: ", rating)
		# TODO: Iterate and print out genres

func createAlbum(arr : Array[String]) -> void:
	var album = Album.new(arr)
	albumLibrary.append(album)
	# TODO: WRITE TO CSV
	print("Album Added!")
	
func debugAlbumLibrary():
	for album in albumLibrary:
		album.debugPrint()
