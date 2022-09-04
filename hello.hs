import Html

main :: IO()
main = putStrLn (render myhtml)

myhtml :: Html
myhtml = html_ "My page title"
    (append_
     (h1_ "Hello")
     (append_
      (p_ "world")
      (p_ "or anyone")))
