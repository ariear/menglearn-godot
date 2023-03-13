extends Control

var point = 0

func _ready():
	# $Brain.connect("brain_keambil", self, "_on_TambahPoint")
	
	var brains = $Brains.get_children()
	
	for brain in brains :
		brain.connect("brain_keambil", self, "_on_TambahPoint")
	

func _on_TambahPoint(p):
	point += p
	print(point)
	pass
