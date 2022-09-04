main = putStrLn (render myhtml)

myhtml :: Html
myhtml = html_ "My page title"
    (append_
     (h1_ "Hello")
     (append_
      (p_ "world")
      (p_ "or anyone")))

html_ :: Title -> Structure -> Html
html_ title body =
    Html (el "html" ((el "head" (el "title" title)) <> (el "body" (getStructureString body))))

p_ :: String -> Structure
p_ = Structure . el "p"

h1_ :: String -> Structure
h1_ = Structure . el "h1"

el :: String -> String -> String
el tag content =
    "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

newtype Html = Html String

render :: Html -> String
render (Html html) = html

newtype Structure = Structure String

append_ :: Structure -> Structure -> Structure
append_ (Structure a) (Structure b) = Structure (a <> b)

getStructureString :: Structure -> String
getStructureString struct =
    case struct of
        Structure str -> str

type Title = String
