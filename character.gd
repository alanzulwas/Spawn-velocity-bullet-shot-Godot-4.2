extends CharacterBody2D

var peluru = preload("res://Solution/peluru.tscn")
@export var kanan = true
#@export var peluru: StaticBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func tembak():
	if Input.is_action_just_pressed("ui_mouse_left"):
		print("tembak")
		var instance = peluru.instantiate()
		if kanan:
			instance.getVelo(Vector2(1,0))
		else :
			instance.getVelo(Vector2(-1,0))
		#instance.visiblity = true
		print(instance)
		instance.global_scale = self.global_scale
		instance.global_position = $PosisiShot.global_position
		get_tree().root.add_child(instance)

func hadap():
	var kanan_temp
	if Input.is_action_just_pressed("ui_right"):
		kanan_temp = true
		putar(kanan_temp)
	if Input.is_action_just_pressed("ui_left"):
		kanan_temp = false
		putar(kanan_temp)

func putar(kanan_temp: bool):
	if kanan_temp != kanan:
		kanan = !kanan
		self.scale.x *= -1

func _physics_process(delta):
	tembak()
	hadap()
		# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$Sprite2D.flip_h = true

	move_and_slide()
