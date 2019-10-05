module Cell exposing (..)

import Url exposing (Url)

type alias Cell =
    {   x: Int
    ,   y: Int 
    ,   z: Int
    ,   border: BorderStyle
    }

-- up, right, left, down
type BorderStyle = BorderStyle Bool Bool Bool Bool

