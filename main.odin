package main

import rl "vendor:raylib"

main :: proc() {
    rl.InitWindow(720, 720, "odin raylib test")
    defer rl.CloseWindow()

    rl.InitAudioDevice()
    defer rl.CloseAudioDevice()

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()
        rl.ClearBackground(rl.RAYWHITE)
        rl.DrawFPS(10, 10)
        rl.DrawRectangle(50,50,100,100,rl.BLACK)
        rl.EndDrawing()
    }
}
