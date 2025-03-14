extends Node2D

var num_selected = 0
var num_solved = 0
var solved = 0

var y = 0
var move_speed = 1000
var buttons = []
var button_pos = []

var button_pressed = []
var button_positions = []


# Called when the node enters the scene tree for the first time.
func _ready():
	#Get random positions
	var positions = [Vector2(100, 100), Vector2(100, 400), Vector2(100, 700), Vector2(100, 1000), Vector2(400, 100), Vector2(400, 400), Vector2(400, 700), Vector2(400, 1000), Vector2(700, 100), Vector2(700, 400), Vector2(700, 700), Vector2(700, 1000), Vector2(1000, 100), Vector2(1000, 400), Vector2(1000, 700), Vector2(1000, 1000)]
	positions.shuffle()
	
	var count = 0
	
	#Assign random positions to buttons
	for button in get_children():
		if count < 16:
			button.global_position = positions[count]
			button_positions.append(positions[count])
			button_pressed.append(false)
			count += 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move(delta)
	

func move(delta):
	y = num_solved * 300 - 200
	if solved == 1:
		$Button1.global_position = $Button1.global_position.move_toward(Vector2(100, y), delta*move_speed)
		$Button2.global_position = $Button2.global_position.move_toward(Vector2(400, y), delta*move_speed)
		$Button3.global_position = $Button3.global_position.move_toward(Vector2(700, y), delta*move_speed)
		$Button4.global_position = $Button4.global_position.move_toward(Vector2(1000, y), delta*move_speed)
		
		for x in range(button_pos.size()):
			buttons[x].global_position = buttons[x].global_position.move_toward(button_pos[x], delta*move_speed)
		
	elif solved == 2:
		$Button5.global_position = $Button5.global_position.move_toward(Vector2(100, y), delta*move_speed)
		$Button6.global_position = $Button6.global_position.move_toward(Vector2(400, y), delta*move_speed)
		$Button7.global_position = $Button7.global_position.move_toward(Vector2(700, y), delta*move_speed)
		$Button8.global_position = $Button8.global_position.move_toward(Vector2(1000, y), delta*move_speed)
		
		for x in range(button_pos.size()):
			buttons[x].global_position = buttons[x].global_position.move_toward(button_pos[x], delta*move_speed)
		
	elif solved == 3:
		$Button9.global_position = $Button9.global_position.move_toward(Vector2(100, y), delta*move_speed)
		$Button10.global_position = $Button10.global_position.move_toward(Vector2(400, y), delta*move_speed)
		$Button11.global_position = $Button11.global_position.move_toward(Vector2(700, y), delta*move_speed)
		$Button12.global_position = $Button12.global_position.move_toward(Vector2(1000, y), delta*move_speed)
		
		for x in range(button_pos.size()):
			buttons[x].global_position = buttons[x].global_position.move_toward(button_pos[x], delta*move_speed)
		
	elif solved == 4:
		$Button13.global_position = $Button13.global_position.move_toward(Vector2(100, y), delta*move_speed)
		$Button14.global_position = $Button14.global_position.move_toward(Vector2(400, y), delta*move_speed)
		$Button15.global_position = $Button15.global_position.move_toward(Vector2(700, y), delta*move_speed)
		$Button16.global_position = $Button16.global_position.move_toward(Vector2(1000, y), delta*move_speed)
		
		for x in range(button_pos.size()):
			buttons[x].global_position = buttons[x].global_position.move_toward(button_pos[x], delta*move_speed)
		

func update_pos():
	var count = 0
	
	for button in get_children():
		if count < 16:
			button_positions[count] = button.global_position
			count += 1

func pressed(index, button):
	if (button_pressed[index]):
		button.add_theme_stylebox_override("normal", load("res://colors/unclicked.tres"))
		button_pressed[index] = false
		num_selected -= 1
	elif (!button_pressed[index] && num_selected < 4):
		button.add_theme_stylebox_override("normal", load("res://colors/clicked.tres"))
		button_pressed[index] = true
		num_selected += 1


func _on_button_1_pressed():
	pressed(0, $Button1)

func _on_button_2_pressed():
	pressed(1, $Button2)

func _on_button_3_pressed():
	pressed(2, $Button3)

func _on_button_4_pressed():
	pressed(3, $Button4)

func _on_button_5_pressed():
	pressed(4, $Button5)

func _on_button_6_pressed():
	pressed(5, $Button6)

func _on_button_7_pressed():
	pressed(6, $Button7)

func _on_button_8_pressed():
	pressed(7, $Button8)

func _on_button_9_pressed():
	pressed(8, $Button9)

func _on_button_10_pressed():
	pressed(9, $Button10)

func _on_button_11_pressed():
	pressed(10, $Button11)

func _on_button_12_pressed():
	pressed(11, $Button12)

func _on_button_13_pressed():
	pressed(12, $Button13)

func _on_button_14_pressed():
	pressed(13, $Button14)

func _on_button_15_pressed():
	pressed(14, $Button15)

func _on_button_16_pressed():
	pressed(15, $Button16)

func _on_guess_button_pressed():
	update_pos()
	
	if (get_node("Button1").disabled == false and button_pressed[0] && button_pressed[1] && button_pressed[2] && button_pressed[3]):
		get_node("Button1").disabled = true
		get_node("Button2").disabled = true
		get_node("Button3").disabled = true
		get_node("Button4").disabled = true
		
		buttons.clear()
		button_pos.clear()
		
		num_selected = 0
		num_solved += 1
		solved = 1
		
		y = num_solved * 300 - 200
		for button in get_children():
			if button.global_position[1] == y:
				if button != $Button1 && button != $Button2 && button != $Button3 && button != $Button4:
					buttons.append(button)
			else:
				if (button == $Button1 || button == $Button2 || button == $Button3 || button == $Button4):
					button_pos.append(button.global_position)
				
	
	elif (get_node("Button5").disabled == false and button_pressed[4] && button_pressed[5] && button_pressed[6] && button_pressed[7]):
		get_node("Button5").disabled = true
		get_node("Button6").disabled = true
		get_node("Button7").disabled = true
		get_node("Button8").disabled = true
		
		buttons.clear()
		button_pos.clear()
		
		num_selected = 0
		num_solved += 1
		solved = 2
		
		y = num_solved * 300 - 200
		for button in get_children():
			if button.global_position[1] == y:
				if button != $Button5 && button != $Button6 && button != $Button7 && button != $Button8:
					buttons.append(button)
			else:
				if (button == $Button5 || button == $Button6 || button == $Button7 || button == $Button8):
					button_pos.append(button.global_position)
		
	elif (get_node("Button9").disabled == false and button_pressed[8] && button_pressed[9] && button_pressed[10] && button_pressed[11]):
		get_node("Button9").disabled = true
		get_node("Button10").disabled = true
		get_node("Button11").disabled = true
		get_node("Button12").disabled = true
		
		buttons.clear()
		button_pos.clear()
		
		num_selected = 0
		num_solved += 1
		solved = 3
		
		y = num_solved * 300 - 200
		for button in get_children():
			if button.global_position[1] == y:
				if button != $Button9 && button != $Button10 && button != $Button11 && button != $Button12:
					buttons.append(button)
			else:
				if (button == $Button9 || button == $Button10 || button == $Button11 || button == $Button12):
					button_pos.append(button.global_position)
		
	elif (get_node("Button13").disabled == false and button_pressed[12] && button_pressed[13] && button_pressed[14] && button_pressed[15]):
		get_node("Button13").disabled = true
		get_node("Button14").disabled = true
		get_node("Button15").disabled = true
		get_node("Button16").disabled = true
		
		buttons.clear()
		button_pos.clear()
		
		num_selected = 0
		num_solved += 1
		solved = 4
		
		y = num_solved * 300 - 200
		for button in get_children():
			if button.global_position[1] == y:
				if button != $Button13 && button != $Button14 && button != $Button15 && button != $Button16:
					buttons.append(button)
			else:
				if (button == $Button13 || button == $Button14 || button == $Button15 || button == $Button16):
					button_pos.append(button.global_position)
	
	else:
		solved = 0
