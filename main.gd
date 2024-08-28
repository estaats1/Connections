extends Node2D

var num_selected = 0
var num_solved = 0
var solved = 0

var y = 0
var move_speed = 500
var button1
var button2
var button3
var button4

var b1pressed = false
var b2pressed = false
var b3pressed = false
var b4pressed = false
var b5pressed = false
var b6pressed = false
var b7pressed = false
var b8pressed = false
var b9pressed = false
var b10pressed = false
var b11pressed = false
var b12pressed = false
var b13pressed = false
var b14pressed = false
var b15pressed = false
var b16pressed = false

var button_positions = []


# Called when the node enters the scene tree for the first time.
func _ready():
	var positions = [Vector2(150, 50), Vector2(150, 200), Vector2(150, 350), Vector2(150, 500), Vector2(350, 50), Vector2(350, 200), Vector2(350, 350), Vector2(350, 500), Vector2(550, 50), Vector2(550, 200), Vector2(550, 350), Vector2(550, 500), Vector2(750, 50), Vector2(750, 200), Vector2(750, 350), Vector2(750, 500)]
	positions.shuffle()
	$Button1.global_position = positions[0]
	$Button2.global_position = positions[1]
	$Button3.global_position = positions[2]
	$Button4.global_position = positions[3]
	$Button5.global_position = positions[4]
	$Button6.global_position = positions[5]
	$Button7.global_position = positions[6]
	$Button8.global_position = positions[7]
	$Button9.global_position = positions[8]
	$Button10.global_position = positions[9]
	$Button11.global_position = positions[10]
	$Button12.global_position = positions[11]
	$Button13.global_position = positions[12]
	$Button14.global_position = positions[13]
	$Button15.global_position = positions[14]
	$Button16.global_position = positions[15]
	
	for x in range(16):
		button_positions.append(positions[x])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move(delta)
	

func move(delta):
	y = num_solved * 150 - 100
	if solved == 1:
		$Button1.global_position = $Button1.global_position.move_toward(Vector2(150, y), delta*move_speed)
		$Button2.global_position = $Button2.global_position.move_toward(Vector2(350, y), delta*move_speed)
		$Button3.global_position = $Button3.global_position.move_toward(Vector2(550, y), delta*move_speed)
		$Button4.global_position = $Button4.global_position.move_toward(Vector2(750, y), delta*move_speed)
				
		button1.global_position = button1.global_position.move_toward(button_positions[0], delta*move_speed)
		button2.global_position = button2.global_position.move_toward(button_positions[1], delta*move_speed)
		button3.global_position = button3.global_position.move_toward(button_positions[2], delta*move_speed)
		button4.global_position = button4.global_position.move_toward(button_positions[3], delta*move_speed)
		
	elif solved == 2:
		$Button5.global_position = $Button5.global_position.move_toward(Vector2(150, y), delta*move_speed)
		$Button6.global_position = $Button6.global_position.move_toward(Vector2(350, y), delta*move_speed)
		$Button7.global_position = $Button7.global_position.move_toward(Vector2(550, y), delta*move_speed)
		$Button8.global_position = $Button8.global_position.move_toward(Vector2(750, y), delta*move_speed)
		
		button1.global_position = button1.global_position.move_toward(button_positions[4], delta*move_speed)
		button2.global_position = button2.global_position.move_toward(button_positions[5], delta*move_speed)
		button3.global_position = button3.global_position.move_toward(button_positions[6], delta*move_speed)
		button4.global_position = button4.global_position.move_toward(button_positions[7], delta*move_speed)
		
	elif solved == 3:
		$Button9.global_position = $Button9.global_position.move_toward(Vector2(150, y), delta*move_speed)
		$Button10.global_position = $Button10.global_position.move_toward(Vector2(350, y), delta*move_speed)
		$Button11.global_position = $Button11.global_position.move_toward(Vector2(550, y), delta*move_speed)
		$Button12.global_position = $Button12.global_position.move_toward(Vector2(750, y), delta*move_speed)
		
		button1.global_position = button1.global_position.move_toward(button_positions[8], delta*move_speed)
		button2.global_position = button2.global_position.move_toward(button_positions[9], delta*move_speed)
		button3.global_position = button3.global_position.move_toward(button_positions[10], delta*move_speed)
		button4.global_position = button4.global_position.move_toward(button_positions[11], delta*move_speed)
		
	elif solved == 4:
		$Button13.global_position = $Button13.global_position.move_toward(Vector2(150, y), delta*move_speed)
		$Button14.global_position = $Button14.global_position.move_toward(Vector2(350, y), delta*move_speed)
		$Button15.global_position = $Button15.global_position.move_toward(Vector2(550, y), delta*move_speed)
		$Button16.global_position = $Button16.global_position.move_toward(Vector2(750, y), delta*move_speed)
		
		button1.global_position = button1.global_position.move_toward(button_positions[12], delta*move_speed)
		button2.global_position = button2.global_position.move_toward(button_positions[13], delta*move_speed)
		button3.global_position = button3.global_position.move_toward(button_positions[14], delta*move_speed)
		button4.global_position = button4.global_position.move_toward(button_positions[15], delta*move_speed)
		


func _on_button_1_pressed():
	if (b1pressed):
		$Button1.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b1pressed = false
		num_selected -= 1
	elif (!b1pressed && num_selected < 4):
		$Button1.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b1pressed = true
		num_selected += 1


func _on_button_2_pressed():
	if (b2pressed):
		$Button2.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b2pressed = false
		num_selected -= 1
	elif (!b2pressed && num_selected < 4):
		$Button2.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b2pressed = true
		num_selected += 1


func _on_button_3_pressed():
	if (b3pressed):
		$Button3.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b3pressed = false
		num_selected -= 1
	elif (!b3pressed && num_selected < 4):
		$Button3.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b3pressed = true
		num_selected += 1


func _on_button_4_pressed():
	if (b4pressed):
		$Button4.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b4pressed = false
		num_selected -= 1
	elif (!b4pressed && num_selected < 4):
		$Button4.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b4pressed = true
		num_selected += 1
		

func _on_button_5_pressed():
	if (b5pressed):
		$Button5.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b5pressed = false
		num_selected -= 1
	elif (!b5pressed && num_selected < 4):
		$Button5.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b5pressed = true
		num_selected += 1


func _on_button_6_pressed():
	if (b6pressed):
		$Button6.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b6pressed = false
		num_selected -= 1
	elif (!b6pressed && num_selected < 4):
		$Button6.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b6pressed = true
		num_selected += 1


func _on_button_7_pressed():
	if (b7pressed):
		$Button7.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b7pressed = false
		num_selected -= 1
	elif (!b7pressed && num_selected < 4):
		$Button7.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b7pressed = true
		num_selected += 1


func _on_button_8_pressed():
	if (b8pressed):
		$Button8.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b8pressed = false
		num_selected -= 1
	elif (!b8pressed && num_selected < 4):
		$Button8.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b8pressed = true
		num_selected += 1


func _on_button_9_pressed():
	if (b9pressed):
		$Button9.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b9pressed = false
		num_selected -= 1
	elif (!b9pressed && num_selected < 4):
		$Button9.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b9pressed = true
		num_selected += 1


func _on_button_10_pressed():
	if (b10pressed):
		$Button10.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b10pressed = false
		num_selected -= 1
	elif (!b10pressed && num_selected < 4):
		$Button10.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b10pressed = true
		num_selected += 1


func _on_button_11_pressed():
	if (b11pressed):
		$Button11.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b11pressed = false
		num_selected -= 1
	elif (!b11pressed && num_selected < 4):
		$Button11.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b11pressed = true
		num_selected += 1
		

func _on_button_12_pressed():
	if (b12pressed):
		$Button12.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b12pressed = false
		num_selected -= 1
	elif (!b12pressed && num_selected < 4):
		$Button12.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b12pressed = true
		num_selected += 1


func _on_button_13_pressed():
	if (b13pressed):
		$Button13.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b13pressed = false
		num_selected -= 1
	elif (!b13pressed && num_selected < 4):
		$Button13.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b13pressed = true
		num_selected += 1


func _on_button_14_pressed():
	if (b14pressed):
		$Button14.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b14pressed = false
		num_selected -= 1
	elif (!b14pressed && num_selected < 4):
		$Button14.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b14pressed = true
		num_selected += 1


func _on_button_15_pressed():
	if (b15pressed):
		$Button15.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b15pressed = false
		num_selected -= 1
	elif (!b15pressed && num_selected < 4):
		$Button15.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b15pressed = true
		num_selected += 1


func _on_button_16_pressed():
	if (b16pressed):
		$Button16.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		b16pressed = false
		num_selected -= 1
	elif (!b16pressed && num_selected < 4):
		$Button16.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		b16pressed = true
		num_selected += 1
		

func _on_guess_button_pressed():
	if (get_node("Button1").disabled == false and b1pressed && b2pressed && b3pressed && b4pressed):
			get_node("Button1").disabled = true
			get_node("Button2").disabled = true
			get_node("Button3").disabled = true
			get_node("Button4").disabled = true
			num_selected = 0
			num_solved += 1
			solved = 1
			
			y = num_solved * 150 - 100
			for button in get_children():
				if button.global_position == Vector2(150, y):
					button1 = button
				elif button.global_position == Vector2(350, y):
					button2 = button
				elif button.global_position == Vector2(550, y):
					button3 = button
				elif button.global_position == Vector2(750, y):
					button4 = button
			
	elif (get_node("Button5").disabled == false and b5pressed && b6pressed && b7pressed && b8pressed):
			get_node("Button5").disabled = true
			get_node("Button6").disabled = true
			get_node("Button7").disabled = true
			get_node("Button8").disabled = true
			num_selected = 0
			num_solved += 1
			solved = 2
			
			y = num_solved * 150 - 100
			for button in get_children():
				if button.global_position == Vector2(150, y):
					button1 = button
				elif button.global_position == Vector2(350, y):
					button2 = button
				elif button.global_position == Vector2(550, y):
					button3 = button
				elif button.global_position == Vector2(750, y):
					button4 = button
			
	elif (get_node("Button9").disabled == false and b9pressed && b10pressed && b11pressed && b12pressed):
			get_node("Button9").disabled = true
			get_node("Button10").disabled = true
			get_node("Button11").disabled = true
			get_node("Button12").disabled = true
			num_selected = 0
			num_solved += 1
			solved = 3
			
			y = num_solved * 150 - 100
			for button in get_children():
				if button.global_position == Vector2(150, y):
					button1 = button
				elif button.global_position == Vector2(350, y):
					button2 = button
				elif button.global_position == Vector2(550, y):
					button3 = button
				elif button.global_position == Vector2(750, y):
					button4 = button
			
	elif (get_node("Button13").disabled == false and b13pressed && b14pressed && b15pressed && b16pressed):
			get_node("Button13").disabled = true
			get_node("Button14").disabled = true
			get_node("Button15").disabled = true
			get_node("Button16").disabled = true
			num_selected = 0
			num_solved += 1
			solved = 4
			
			y = num_solved * 150 - 100
			for button in get_children():
				if button.global_position == Vector2(150, y):
					button1 = button
				elif button.global_position == Vector2(350, y):
					button2 = button
				elif button.global_position == Vector2(550, y):
					button3 = button
				elif button.global_position == Vector2(750, y):
					button4 = button
