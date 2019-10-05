module Content exposing (..)

import Url exposing (Url)

type alias Content =
    {   x: Int
    ,   y: Int
    ,   z: Int
    ,   content: CellContent
    }

type CellContent
    = CellText TextContent
    | CellLink LinkContent
    | CellImage ImageContent

type TextContent = TextContent String

type LinkContent = LinkContent Url

-- TODO: data or FQDN url
type ImageContent = ImageContent String