extends StaticBody2D

var velo = Vector2(0, 0)
var speed = 300

func getVelo(velo: Vector2):
	self.velo = velo

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collision_info = move_and_collide(self.velo.normalized() * delta * speed)
	pass
