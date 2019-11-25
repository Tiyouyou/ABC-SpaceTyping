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
#menu Script
extends Node2D
#savegame_files_path
const SAVE_PATH="res://save.json"
const SAVE_PATH2="res://save2.json"
const SAVE_PATH3="res://save3.json"
const SAVE_PATH_BEST_SCORE="res://best_score.json"
var vn=1
func _ready():
	#verification file to active load button
	var save_file= File.new()
	if save_file.file_exists(SAVE_PATH) or save_file.file_exists(SAVE_PATH2) or save_file.file_exists(SAVE_PATH3):
		$menu_deco/Load_game.disabled=false
	var load_score=File.new()
	if load_score.file_exists(SAVE_PATH_BEST_SCORE) :
		var load_bscrore=save.load_best_score()
		for node_path in load_bscrore.keys():
			var best_score=load_bscrore["best"]["Best_SCORE"]
			var player_name=load_bscrore["best"]["player_name"]
			$menu_deco/label_best_score.text=String(best_score)
			$menu_deco/player_name.text=player_name
			


func _on_load_data_focus_entered():
	$menu_deco.hide()
	$son.stop()
	pass # load file save 1 button action


func _on_load_data2_focus_entered():
	$menu_deco.hide()
	$son.stop()
	pass # load file save 2 button action


func _on_load_data3_focus_entered():
	$menu_deco.hide()
	$son.stop()
	pass # load file save 3 button action


func _on_TextureButton_pressed():
	
	pass # volume button icon




func _on_exit_focus_entered():
	get_tree().quit()
	pass # quit game button


func _on_Load_game_focus_entered():
	$save_mode.show()
	pass # Rload game button


func _on_new_game_focus_entered():
	get_tree().change_scene("res://scene/Main.tscn")
		
	pass #new game button 


func _on_volumeb1_focus_entered():
	$menu_deco/ColorRect.show()
	$menu_deco/volumeb1.hide()
	$menu_deco/volumeb2.show()
	pass # Replace with function body.


func _on_volumeb2_focus_entered():
	$menu_deco/ColorRect.hide()
	$menu_deco/volumeb2.hide()
	$menu_deco/volumeb1.show()
	pass # Replace with function body.
