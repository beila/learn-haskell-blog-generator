import Html

main :: IO()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml = html_ "My page \"title\""
     ((h1_ "He>l<lo") <>
      (p_ "world") <>
      (p_ "or && anyone") <>
      (ul_
       [ p_ "item 1"
       , p_ "item 2"
       , p_ "item 3"
       ]) <>
      (ol_
       [ p_ "item 1"
       , p_ "item 2"
       , p_ "item 3"
       ]) <>
      (code_ "Structure . el \"ul\""))
