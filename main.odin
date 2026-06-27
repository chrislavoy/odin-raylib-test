package main

import rl "vendor:raylib"

main :: proc() {
    rl.InitWindow(720, 720, "odin raylib test")
    defer rl.CloseWindow()

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()
        rl.ClearBackground(rl.RAYWHITE)
        rl.DrawFPS(10, 10)
        rl.EndDrawing()
    }
}
