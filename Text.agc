MakeText:
CreateText(1, "SCORE: 0")
SetTextSize(1, 60)
SetTextPosition(1, 0, 0)
Return

UpdateText:
SetTextString(1, "SCORE: " + Str(score))
Return
