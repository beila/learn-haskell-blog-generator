module P
( isBright
) where

data Brightness
  = Dark
  | Bright

data EightColor
  = Black
  | Red
  | Green
  | Yellow
  | Blue
  | Magenta
  | Cyan
  | White

data AnsiColor
  = AnsiColor Brightness EightColor

{-
 -ansiColorToVGA :: AnsiColor -> Color
 -ansiColorToVGA ansicolor =
 -  case ansicolor of
 -    AnsiColor Dark Black ->
 -      RGB 0 0 0
 -    AnsiColor Bright Black ->
 -      RGB 85 85 85
 -    AnsiColor Dark Red ->
 -      RGB 170 0 0
 -    AnsiColor Bright Red ->
 -      RGB 255 85 85
 -    -- and so on
 -}

isBright:: AnsiColor -> Bool
isBright ansicolor =
  case ansicolor of
    AnsiColor Dark _ -> False
    AnsiColor Bright _ -> True

{-
 -ansiToUbuntu :: AnsiColor -> Color
 -ansiToUbuntu ansicolor =
 -  case ansicolor of
 -    AnsiColor Dark Black ->
 -      RGB 0 0 0
 -    AnsiColor Dark Red ->
 -      RGB 170 0 0
 -    AnsiColor Dark Green ->
 -      RGB 0 0 0
 -    AnsiColor Dark Yellow ->
 -      RGB 170 0 0
 -    AnsiColor Dark Blue ->
 -      RGB 0 0 0
 -    AnsiColor Dark Magenta ->
 -      RGB 170 0 0
 -    AnsiColor Dark Cyan ->
 -      RGB 0 0 0
 -    AnsiColor Dark White ->
 -      RGB 170 0 0
 -    AnsiColor Bright Black ->
 -      RGB 0 0 0
 -    AnsiColor Bright Red ->
 -      RGB 170 0 0
 -    AnsiColor Bright Green ->
 -      RGB 0 0 0
 -    AnsiColor Bright Yellow ->
 -      RGB 170 0 0
 -    AnsiColor Bright Blue ->
 -      RGB 0 0 0
 -    AnsiColor Bright Magenta ->
 -      RGB 170 0 0
 -    AnsiColor Bright Cyan ->
 -      RGB 0 0 0
 -    AnsiColor Bright White ->
 -      RGB 170 0 0
 -}
