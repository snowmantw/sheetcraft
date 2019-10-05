module Route exposing (..)

import Url.Parser exposing (Parser, (</>), int, map, oneOf, s, string, top, parse)
import Url exposing (Url)

type Route = LogRoute Int
           | MainRoute

routeParser : Parser (Route -> a) a
routeParser =
  oneOf
    [ map MainRoute top
    , map LogRoute (s "log" </> int)
    ]

fromUrl : Url -> Maybe Route
fromUrl url = parse routeParser url