# main_menu.gd - Main menu scene script for MainMenu.tscn
extends Control

# UI elements (create these as child nodes in MainMenu.tscn)
@onready var title_label: Label = $VBoxContainer/TitleLabel
@onready var start_button: Button = $VBoxContainer/StartButton
@onready var quit_button: Button = $VBoxContainer/QuitButton

func _ready() -> void:
	print("[MainMenu] Main menu scene ready")
	
	# Connect button signals
	start_button.pressed.connect(_on_start_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_start_pressed() -> void:
	print("[MainMenu] Start button pressed - beginning new run")
	
	# Navigate to first scene using GameManager
	GameManager.change_scene("res://scenes/game_flow/XXX.tscn")

func _on_quit_pressed() -> void:
	print("[MainMenu] Quit button pressed - exiting game")
	get_tree().quit()
