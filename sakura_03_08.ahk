; 変数宣言
targetURL := "https://www.youtube.com/watch?v=PykgoAPM1qo"
clickCount := 0

; マウスの左クリックが検出されたときのアクション
~LButton::
clickCount++
If (clickCount = 2) {
    clickCount := 0
    Run, %targetURL%
}
; カウンタをリセットするための遅延
SetTimer, ResetClickCount, -400
return

ResetClickCount:
clickCount := 0
return
