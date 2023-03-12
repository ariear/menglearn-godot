extends Node2D

export var tujuan = Vector2(0, 0)
export var awal = Vector2(0, 0)
export var kecepatan = 100

var pergi = true
var waktu_tunggu = 0.5
var waktu = 0.0

func _physics_process(delta):
	if (waktu > 0) :
		waktu -= delta
	else :
		var arah = Vector2(0, 0)
		if (pergi) :
			arah = tujuan - $Body.position
		else :
			arah = awal - $Body.position
		
		if (arah.length() < kecepatan * delta) :
			pergi = !pergi
			waktu = waktu_tunggu
		else :
			arah = arah.normalized()
			#$Body.move_and_slide(arah * kecepatan)
			$Body.position += arah * kecepatan * delta
		
	
