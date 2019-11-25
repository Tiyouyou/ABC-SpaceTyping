# This file is part of ABC Space Typing .

#ABC Space Typing is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# ABC Space Typing is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with ABC Space Typing.  If not, see <https://www.gnu.org/licenses/>. 2

#Autor: Michel Pierre
extends Node2D
var lazer =preload("res://scene/lazer.tscn")#lazer scene
var explosion_scene=preload("res://scene/explosion.tscn")#explosion scene
var lettre = Array()# letter array to calcul min distance with player
var min_distance #distance of letter to player
var cmp=0 #index of min distance letter  to player
var score=0 #player score
var Increment_score=1
var pause=0
var lettre_name = Array() #letter array of name
signal playnext #next level signal
signal retry	#retry game signal (game over)
var player_name=""
var best_score
var best_score_temp=0
var end_animation=0
const SAVE_PATH_BEST_SCORE="res://best_score.json"
func _ready():
	$playgame.get_tree().paused=false
	$levels_controler/new_game_instruction.show()
	$levels_controler.level=0
	$theme_music.play()
	$score_compteur.text=String(score)
	min_distance=$playgame/bar.position.x -$playgame/bar2.position.x
	#verif best score
	var load_score=File.new()
	if load_score.file_exists(SAVE_PATH_BEST_SCORE) :
		var load_bscrore=save.load_best_score()
		for node_path in load_bscrore.keys():
			
			best_score=load_bscrore["best"]["Best_SCORE"]
			best_score_temp=best_score
	pass
	
	
func _process(delta):
	if lettre.empty():
		print("")

	else:
		#calcul the min distance letter to player
		if lettre[cmp].position.x-$playgame/bar2.position.x<=min_distance:
				min_distance=lettre[cmp].position.x-$playgame/bar2.position.x
		#key action player
		if Input.is_action_just_pressed("ui_q"):
			if lettre.front():
				if "Q" in lettre_name[cmp] or lettre_name[cmp]=="Q":
					_action_player()
		if Input.is_action_just_pressed("ui_w"):
			if lettre.front():
				if "W" in lettre_name[cmp] or lettre_name[cmp]=="W":
					_action_player()
		if Input.is_action_just_pressed("ui_e"):
			if lettre.front():
				if "E" in lettre_name[cmp] or lettre_name[cmp]=="E":
					_action_player()
		if Input.is_action_just_pressed("ui_r"):
			if lettre.front():
				if "R" in lettre_name[cmp] or lettre_name[cmp]=="R":
					_action_player()
		if Input.is_action_just_pressed("ui_t"):
			if lettre.front():
				if "T" in lettre_name[cmp] or lettre_name[cmp]=="T":
					_action_player()
		if Input.is_action_just_pressed("ui_y"):
			if lettre.front():
				if "Y" in lettre_name[cmp] or lettre_name[cmp]=="Y":
					_action_player()
		if Input.is_action_just_pressed("ui_u"):
			if lettre.front():
				if "U" in lettre_name[cmp] or lettre_name[cmp]=="U":
					_action_player()
		if Input.is_action_just_pressed("ui_i"):
			if lettre.front():
				if "I" in lettre_name[cmp] or lettre_name[cmp]=="I":
					_action_player()
		if Input.is_action_just_pressed("ui_o"):
			if lettre.front():
				if "O" in lettre_name[cmp] or lettre_name[cmp]=="O":
					_action_player()
		if Input.is_action_just_pressed("ui_["):
			if lettre.front():
				if "[" in lettre_name[cmp] or lettre_name[cmp]=="[":
					_action_player()
		if Input.is_action_just_pressed("ui_]"):
			if lettre.front():
				if "]" in lettre_name[cmp] or lettre_name[cmp]=="]":
					_action_player()
		if Input.is_action_just_pressed("ui_p"):
			if lettre.front():
				if "P" in lettre_name[cmp] or lettre_name[cmp]=="P":
					_action_player()
		if Input.is_action_just_pressed("ui_F"):
			if lettre.front():
				if "F" in lettre_name[cmp] or lettre_name[cmp]=="F":
					_action_player()
		if Input.is_action_just_pressed("ui_J"):
			if lettre.front():
				if "J" in lettre_name[cmp] or lettre_name[cmp]=="J":
					_action_player()
		if Input.is_action_just_pressed("ui_A"):
			if lettre.front():
				if "A" in lettre_name[cmp] or lettre_name[cmp]=="A":
					_action_player()
		if Input.is_action_just_pressed("ui_s"):
			if lettre.front():
				if "S" in lettre_name[cmp] or lettre_name[cmp]=="S":
					_action_player()
		if Input.is_action_just_pressed("ui_d"):
			if lettre.front():
				if "D" in lettre_name[cmp] or lettre_name[cmp]=="D":
					_action_player()
		if Input.is_action_just_pressed("ui_g"):
			if lettre.front():
				if "G" in lettre_name[cmp] or lettre_name[cmp]=="G":
					_action_player()
		if Input.is_action_just_pressed("ui_h"):
			if lettre.front():
				if "H" in lettre_name[cmp] or lettre_name[cmp]=="H":
					_action_player()
		if Input.is_action_just_pressed("ui_k"):
			if lettre.front():
				if "K" in lettre_name[cmp] or lettre_name[cmp]=="K":
					_action_player()
		if Input.is_action_just_pressed("ui_l"):
			if lettre.front():
				if "L" in lettre_name[cmp] or lettre_name[cmp]=="L":
					_action_player()
		if Input.is_action_just_pressed("semicolon"):
			if lettre.front():
				if "semicolon" in lettre_name[cmp] or lettre_name[cmp]=="semicolon":
					_action_player()
		if Input.is_action_just_pressed("apost1"):
			if lettre.front():
				if "apost1" in lettre_name[cmp] or lettre_name[cmp]=="apost1":
					_action_player()
		if Input.is_action_just_pressed("ui_z"):
			if lettre.front():
				if "Z" in lettre_name[cmp] or lettre_name[cmp]=="Z":
					_action_player()
		if Input.is_action_just_pressed("ui_x"):
			if "X" in lettre_name[cmp] or lettre_name[cmp]=="X":
				_action_player()
		if Input.is_action_just_pressed("ui_c"):
			if lettre.front():
				if "C" in lettre_name[cmp] or lettre_name[cmp]=="C":
					_action_player()
		if Input.is_action_just_pressed("ui_v"):
			if lettre.front():
				if "V" in lettre_name[cmp] or lettre_name[cmp]=="V":
					_action_player()
		if Input.is_action_just_pressed("ui_b"):
			if lettre.front():
				if "B" in lettre_name[cmp] or lettre_name[cmp]=="B":
					_action_player()
		if Input.is_action_just_pressed("ui_n"):
			if lettre.front():
				if "N" in lettre_name[cmp] or lettre_name[cmp]=="N":
					_action_player()
		if Input.is_action_just_pressed("ui_m"):
			if lettre.front():
				if "M" in lettre_name[cmp] or lettre_name[cmp]=="M":
					_action_player()
		if Input.is_action_just_pressed("comma"):
			if lettre.front():
				if "comma" in lettre_name[cmp] or lettre_name[cmp]=="comma":
					_action_player()
		if Input.is_action_just_pressed("period"):
			if lettre.front():
				if "period" in lettre_name[cmp] or lettre_name[cmp]=="period":
					_action_player()
		if Input.is_action_just_pressed("slash"):
			if lettre.front():
				if "slash" in lettre_name[cmp] or lettre_name[cmp]=="slash":
					_action_player()
		if Input.is_action_just_pressed("pause"):
			pause=1
		#game over condition
		if $life.frame==0:
			$theme_music.stop()
			$playgame.get_tree().paused=true
			$game_over.show()
		#pause game
		if pause==1:
			$playgame.get_tree().paused=true
			$pause_game.show()
		if score>best_score:
			best_score_temp=best_score
			best_score=score
			$best_score/best_score/best_score.text=String(best_score)
			$best_score.show()
			
			if end_animation==0:
				$best_score/best_score/Particles2D.emitting=true
				$best_score/AnimationPlayer.play("anim")
				$best_score/son.play()
				
			else:
				$best_score/AnimationPlayer.stop()
				$best_score/son.stop()
	pass			


func _on_bar_area_entered(area):
	if area.is_in_group("lettre"):
		lettre.append(area)
		lettre_name.append(area.name)
	#letter insertion function




func _on_bar2_area_entered(area):
	if area.is_in_group("lettre"):
		if lettre_name:
			area.queue_free()
			lettre.remove(cmp)
			lettre_name.remove(cmp)
			$life.frame-=1
	
	pass # remove letter function.


func _on_player_area_entered(area):
	utils.remote_call("Camera","shake",8,0.2)
	if area.is_in_group("lettre"):
		lettre.remove(cmp)
		lettre_name.remove(cmp)
		$life.frame-=1
	pass # when letter entered on player.

func _action_player():
	if min_distance:
		while $playgame/player.position.y<lettre[cmp].position.y:
			$playgame/player.position.y+=1
		while $playgame/player.position.y>lettre[cmp].position.y:
			$playgame/player.position.y-=1
		var lazer_instance1=lazer.instance()
		lazer_instance1.position=$playgame/player/Position_lazer.global_position
		add_child(lazer_instance1)
		$lazer_son.play()
		lettre.remove(cmp)
		lettre_name.remove(cmp)
		score+=Increment_score
		$score_compteur.text=String(score)
	#action player 




func _on_Timer_timeout():
	$win_game.hide()
	if $life.frame<4:
		$life.frame+=1
	pass 
	#timer to change level


func _on_levels_controler_end():
	$win_game.show()
	$win_game/Particles2D.emitting=true
	$win_game/son.play()
	
	while lettre.empty()==false:
		var exposion_instance=explosion_scene.instance()
		exposion_instance.position=lettre[cmp].global_position
		get_parent().add_child(exposion_instance)
		lettre[cmp].queue_free()
		lettre.remove(cmp)
		lettre_name.remove(cmp)
		score+=Increment_score
		$score_compteur.text=String(score)
	$playgame/player.position.y=300
	Increment_score+=1
	emit_signal("playnext")
	pass # chang level function.





func _on_Main_retry():
	while lettre.empty()==false:
		lettre[cmp].queue_free()
		lettre.remove(cmp)
		lettre_name.remove(cmp)
	$life.frame=4
	$playgame/player.position.y=300
	$game_over.hide()
	$theme_music.play()
	$score_compteur.text=String(score)
	pass # Rplay again function 




func _on_Button_focus_entered():
	score=0
	$playgame.get_tree().paused=false
	emit_signal("retry")
	pass # Replace with function body.



func _on_continue_focus_entered():
	pause=0
	$pause_game.hide()
	$playgame.get_tree().paused=false
	pass # continue game action buton.


func _on_exit_focus_entered():
	if best_score>best_score_temp:
		save.save_best_score_game()
	
	get_tree().change_scene("res://scene/menu.tscn")
	pass # quit game action button.


func save():
	#compile all the data to save on dictionnary
	var save_dict={
		player_data={
			"player_name":player_name,
			"player_life":$life.frame,
			"player_score":score,
			"player_level":$levels_controler.level
			}
		}
	return save_dict
	pass
#save game function

func _on_save_focus_entered():
	#save.save_game(2)
	$save_mode.show()
	$pause_game.hide()
	pass # send to save mode.


func _on_close_button_focus_entered():
	$playgame.get_tree().paused=false
	$save_mode.hide()
	
	pass #close the save mode.


func _on_save_data_focus_entered():
	save.save_game(1)
	$save_mode/save/data.text="Nom: "+player_name+" Level: "+String($levels_controler.level)+" Score: "+String(score)+" Life: "+String($life.frame)
	#$save_mode/save/load_data.disabled=false
	if best_score>best_score_temp:
		save.save_best_score_game()
	pass # save game data.
	
func _on_save_data2_focus_entered():
	save.save_game(2)
	$save_mode/save2/data.text="Nom: "+player_name+" Level: "+String($levels_controler.level)+" Score: "+String(score)+" Life: "+String($life.frame)
	#$save_mode/save2/load_data2.disabled=false
	if best_score>best_score_temp:
		save.save_best_score_game()
	pass # save game data.


func _on_save_data3_focus_entered():
	save.save_game(3)
	$save_mode/save3/data.text="Nom: "+player_name+" Level: "+String($levels_controler.level)+" Score: "+String(score)+" Life: "+String($life.frame)
	#$save_mode/save3/load_data3.disabled=false
	if best_score>best_score_temp:
		save.save_best_score_game()
	pass # save game data.

func _on_load_data_focus_entered():
	$levels_controler/new_game_instruction.hide()
	if $save_mode/save/data2.text=="1":
		var load_game=save.load_game(1)
		#load game datsa
		for node_path in load_game.keys():
		
			for attribute in load_game["1"]:
				if attribute =="player_data":
					player_name= load_game["1"]["player_data"]["player_name"]
					$life.frame=load_game["1"]["player_data"]["player_life"]
					$levels_controler.level=load_game["1"]["player_data"]["player_level"]
					$label.text=player_name
		$playgame.get_tree().paused=false
		$save_mode.hide()
		$pause_game.hide()
		while lettre.empty()==false:
			lettre[cmp].queue_free()
			lettre.remove(cmp)
			lettre_name.remove(cmp)
	pass # load game





func _on_load_data2_focus_entered():
	$levels_controler/new_game_instruction.hide()
	var load_game=save.load_game(2)
		#load game datsa
	for node_path in load_game.keys():
		
		for attribute in load_game["2"]:
			if attribute =="player_data":
				player_name= load_game["2"]["player_data"]["player_name"]
				$life.frame=load_game["2"]["player_data"]["player_life"]
				$levels_controler.level=load_game["2"]["player_data"]["player_level"]
				$label.text=player_name
	$playgame.get_tree().paused=false
	$save_mode.hide()
	$pause_game.hide()
	while lettre.empty()==false:
		lettre[cmp].queue_free()
		lettre.remove(cmp)
		lettre_name.remove(cmp)
	pass # load game


func _on_load_data3_focus_entered():
	$levels_controler/new_game_instruction.hide()
	var load_game=save.load_game(3)
		#load game datsa
	for node_path in load_game.keys():
		
		for attribute in load_game["3"]:
			if attribute =="player_data":
				player_name= load_game["3"]["player_data"]["player_name"]
				$life.frame=load_game["3"]["player_data"]["player_life"]
				$levels_controler.level=load_game["3"]["player_data"]["player_level"]
				$label.text=player_name
	$playgame.get_tree().paused=false
	$save_mode.hide()
	$pause_game.hide()
	while lettre.empty()==false:
		lettre[cmp].queue_free()
		lettre.remove(cmp)
		lettre_name.remove(cmp)
	pass # load game

func _on_Start_focus_entered():
	player_name=$levels_controler/new_game_instruction/TextEdit.text
	$label.text=player_name
	pass # Replace with function body.


func _on_AnimationPlayer_animation_finished(anim_name):
	end_animation=1
	pass # Replace with function body.

func _best_score_loader():
	var load_score=File.new()
	if load_score.file_exists(SAVE_PATH_BEST_SCORE) :
		var load_bscrore=save.load_best_score()
		for node_path in load_bscrore.keys():
			
			best_score=load_bscrore["best"]["Best_SCORE"]
			best_score_temp=best_score
	pass

func save_best_score():
	var best_score_save={
			"Best_SCORE":best_score,
			"player_name":player_name
		}
	return best_score_save
	pass