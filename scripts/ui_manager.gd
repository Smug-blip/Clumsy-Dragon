extends Node

# UIManager is responsible for managing all game interface elements.

# Variables for UI Elements
var main_menu
var game_hud
var game_over_screen
var premium_popup
var high_score
var score_display

# Called when the node enters the scene tree for the first time.
func _ready():
    # Initialize UI elements
    main_menu = $MainMenu
    game_hud = $GameHUD
    game_over_screen = $GameOverScreen
    premium_popup = $PremiumPurchasePopup
    score_display = $GameHUD/ScoreDisplay
    high_score = get_high_score()
    update_ui()  # update the UI based on current state.

# Function to show main menu
func show_main_menu():
    main_menu.show()
    game_hud.hide()
    game_over_screen.hide()
    premium_popup.hide()

# Function to update game HUD
func update_hud(score:int):
    score_display.text = str(score)

# Function to show game over screen
func show_game_over(score:int):
    game_over_screen.show()
    game_hud.hide()
    game_over_screen.get_node("HighScoreLabel").text = str(high_score)

# Function to show premium purchase popup
func show_premium_popup():
    premium_popup.show()

# Function to get high score (You should implement the logic to retrieve the high score)
func get_high_score() -> int:
    return 0  # Placeholder implementation

# Function to update UI based on game signals and premium status
func update_ui():
    # Logic to update UI elements based on game state and signals. e.g.:
    # 1. Check if game is over.
    # 2. Update based on premium status.
    # 3. Other UI updates as needed.
