module Region exposing (..)

import Array exposing (..)

import Coord exposing (..)

-- Region could have some cells excluded.
-- Like a bounding box and polygon object in game engine.
type alias Region =
    {   x: Int
    ,   y: Int
    ,   z: Int
    ,   excluded: Array Coord
    }