import Html

main :: IO()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml = html_ "My page \"title\""
    (append_
     (h1_ "He>l<lo")
     (append_
      (p_ "world")
      (append_
        (p_ "or && anyone")
        (append_
          (ul_
            [ p_ "item 1"
            , p_ "item 2"
            , p_ "item 3"
            ])
          (append_
            (ol_
              [ p_ "item 1"
              , p_ "item 2"
              , p_ "item 3"
              ])
            (code_ "Structure . el \"ul\""))))))
