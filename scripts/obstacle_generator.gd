# Obstacle spawning system

extends Node

var obstacle_scene: PackedScene
var spawn_timer: Timer

func _ready():
    obstacle_scene = preload("res://scripts/obstacle.tscn")
    spawn_timer = Timer.new()
    spawn_timer.wait_time = 2.0  # Spawn every 2 seconds
    spawn_timer.connect("timeout", self, "_on_spawn_timer_timeout")
    add_child(spawn_timer)
    spawn_timer.start()

func _on_spawn_timer_timeout():
    var obstacle = obstacle_scene.instance()
    get_parent().add_child(obstacle)  # Assuming parent is the main scene
    obstacle.global_position = Vector2(randf() * get_viewport().size.x, 0)