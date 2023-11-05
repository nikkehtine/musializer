package main

import (
	raylib "github.com/gen2brain/raylib-go/raylib"
)

func main() {
	raylib.InitWindow(800, 450, "Musializer")
	raylib.SetTargetFPS(90)

	raylib.InitAudioDevice()
	music := raylib.LoadMusicStream("music/The Penis (Eek!).mp3")
	raylib.PlayMusicStream(music)

	for !raylib.WindowShouldClose() {
		raylib.UpdateMusicStream(music)

		if raylib.IsKeyPressed(raylib.KeySpace) {
			if raylib.IsMusicStreamPlaying(music) {
				raylib.PauseMusicStream(music)
			} else {
				raylib.ResumeMusicStream(music)
			}
		}

		raylib.BeginDrawing()
		raylib.ClearBackground(raylib.RayWhite)
		raylib.EndDrawing()
	}
}
