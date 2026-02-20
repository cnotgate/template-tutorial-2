extends RigidBody2D

@export var speed = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Ship initialized 0")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(linear_velocity)
	if Input.is_action_pressed("move_up"):
		set_axis_velocity(linear_velocity+Vector2(0,-speed))
		#add_constant_central_force(Vector2(0,speed))
	
	if Input.is_action_pressed("move_down"):
		print(linear_velocity, Vector2(0,speed))
		set_axis_velocity(linear_velocity+Vector2(0,speed))
		
	if Input.is_action_pressed("move_left"):
		add_constant_central_force(Vector2(-speed,0))
	
	if Input.is_action_pressed("move_right"):
		add_constant_central_force(Vector2(speed,0))
	
	if  not Input.is_anything_pressed():
		if linear_velocity != Vector2(0,0):
			linear_velocity = Vector2(0,0)
		if constant_force != Vector2(0,0):
			constant_force = Vector2(0,0)
	
