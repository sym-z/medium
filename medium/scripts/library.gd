extends Node

var albumLibrary : Array[Album] = []
class Album:
	var title : String
	var artist : String
	var year : int
	var rating : int
	func _init(tit : String = "?",art:String = "?",yr:int = -1,rate:int = -1) -> void:
		title = tit
		artist = art
		year = yr
		rating = rate
		# TODO: Parse out the genres from the string, and add them to genres[]
		
	func debugPrint():
		print("TITLE: ", title)
		print("ARTIST: ", artist)
		print("YEAR: ", year)
		print("RATING: ", rating)
		# TODO: Iterate and print out genres

func createAlbum(title : String = "unknown",artist:String = "unknown",year:int = 0,rating:int = 0) -> void:
	var album = Album.new(title,artist,year,rating)
	albumLibrary.append(album)
	print("Album Added!")
	album.debugPrint()
