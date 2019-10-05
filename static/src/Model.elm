module Model exposing (..)

import Array exposing (..)
import Browser.Navigation exposing (Key)
import Route exposing (Route, routeParser)
import Url.Parser exposing (parse)
import Url exposing (Url)
import Time exposing (..)

import Coord exposing (..)
import Configs exposing (..)
import Region exposing (..)
import Cell exposing (..)
import Content exposing (..)
import Manipulation exposing (..)
import Buffer exposing (..)

-- Border must be in even number: x = 0, 2, 4....
-- Cell must be in odd number: x = 1, 3, 5...
-- Region must start from border, and and at border, like 0 - 4
--
-- Border is 1/4 width of Cell. If it is a Full cell, border will be hidden
-- while cell looks larger.
--
-- [ |f| ]  vs. [f f f]

type alias Model = 
    {   regions: Array Region
    ,   cells: Array Cell
    ,   contents: Array Content
    ,   manipulations: Array Manipulation

    ,   buffers: Array Buffer
    ,   size: Coord

    ,   configs: Configs
    ,   navKey: Key
    ,   route: Maybe Route
    ,   time: Time.Posix
    }

defaultModel : Url -> Key -> Model
defaultModel url navKey =
    {   regions = Array.empty
    ,   cells = Array.empty
    ,   contents = Array.empty
    ,   manipulations = Array.empty

    ,   buffers = Array.empty
    ,   size = (256, 256)
    
    ,   configs = defaultConfigs
    ,   navKey = navKey
    ,   route = Url.Parser.parse routeParser url
    ,   time = Time.millisToPosix 0
    }