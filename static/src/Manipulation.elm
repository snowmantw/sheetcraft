module Manipulation exposing (..)

type alias Manipulation =
    { kind: ManipulationKind

    }

type ManipulationKind
    = Click
    | DoubleClick
    | Drag
    | Drop
    | Zoom
