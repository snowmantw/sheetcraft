module View exposing (..)

import Browser exposing (Document)
import Html exposing (..)
import Html.Attributes exposing (..)
import Msg exposing (Msg)
import Model exposing (..)


viewMainPage : Model -> Document Msg
viewMainPage model =
    { title = "Sheetcraft"
    , body =
        [
            div
            [ class "main" ]
            [
                text " sheet craft"
            ]
        ]
    }