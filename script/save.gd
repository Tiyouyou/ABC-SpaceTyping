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
#save game Script 
extends Node
#savegame_files_path
const SAVE_PATH="res://savegame/save.json"
const SAVE_PATH2="res://savegame/save2.json"
const SAVE_PATH3="res://savegame/save3.json"
const SAVE_PATH_BEST_SCORE="res://savegame/best_score.json"
var _setting={}
func _ready():
	pass # Replace with function body.

func save_game(var key):
	#get all save data 
	var save_dict={}
	var node_to_save=get_tree().get_nodes_in_group("save")
	for node in node_to_save:
		save_dict[key]=node.save()
		pass
	#create a file
	var save_file=File.new()
	if key==1:
		save_file.open(SAVE_PATH,File.WRITE)
	if key==2:
		save_file.open(SAVE_PATH2,File.WRITE)
	if key==3:
		save_file.open(SAVE_PATH3,File.WRITE)
	#convert data to json
	save_file.store_line(to_json(save_dict))
	
	#close file
	save_file.close()
	pass

func load_game(var key):
	#try to load game data
	var save_file=File.new()
	if key==1:
		if not save_file.file_exists(SAVE_PATH):
			return
			
	#read file and parse data
		save_file.open(SAVE_PATH,File.READ)
	
	if key==2:
		if not save_file.file_exists(SAVE_PATH2):
			return
			
	#read file and parse data
		save_file.open(SAVE_PATH2,File.READ)
	
	if key==3:
		if not save_file.file_exists(SAVE_PATH3):
			return
			
	#read file and parse data
		save_file.open(SAVE_PATH3,File.READ)
	
	var data={}
	data=parse_json(save_file.get_as_text())
	return data
#save best score
func save_best_score_game():
	#get all save data 
	var save_best_score={}
	var node_to_save=get_tree().get_nodes_in_group("save")
	for node in node_to_save:
		save_best_score["best"]=node.save_best_score()
		pass
	#create a file
	var save_file=File.new()
	save_file.open(SAVE_PATH_BEST_SCORE,File.WRITE)
	#convert data to json
	save_file.store_line(to_json(save_best_score))
	
	#close file
	save_file.close()
	
func load_best_score():
	var save_file=File.new()
	if not save_file.file_exists(SAVE_PATH_BEST_SCORE):
		return
			
	#read file and parse data
	save_file.open(SAVE_PATH_BEST_SCORE,File.READ)
	
	var data={}
	data=parse_json(save_file.get_as_text())
	return data