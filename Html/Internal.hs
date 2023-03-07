module Html.Internal where

html_ :: Title -> Structure -> Html
html_ title body =
    Html (el "html" ((el "head" (el "title" (escape title))) <> (el "body" (getStructureString body))))

p_ :: String -> Structure
p_ = Structure . el "p" . escape

h1_ :: String -> Structure
h1_ = Structure . el "h1" . escape

el :: String -> String -> String
el tag content =
    "<" <> tag <> ">" <> content <> "</" <> tag <> ">"

newtype Html = Html String

render :: Html -> String
render (Html html) = html

newtype Structure = Structure String

instance Semigroup Structure where
    c1 <> c2 = Structure (getStructureString c1 <> getStructureString c2)

getStructureString :: Structure -> String
getStructureString struct =
    case struct of
        Structure str -> str

type Title = String

escape :: String -> String
escape =
    let
    escapeChar c =
        case c of
        '<' -> "&lt;"
        '>' -> "&gt;"
        '&' -> "&amp;"
        '"' -> "&quot;"
        '\'' -> "&#39;"
        _ -> [c]
    in
    concat . map escapeChar

ul_ :: [Structure] -> Structure
ul_ = mergeStructures "ul" "li"

ol_ :: [Structure] -> Structure
ol_ = mergeStructures "ol" "li"

mergeStructures :: String -> String -> [Structure] -> Structure
mergeStructures listDeclaration listItem =
    Structure . el listDeclaration . concat . map (el listItem . getStructureString)

code_ :: String -> Structure
code_ = Structure . el "pre" . escape
