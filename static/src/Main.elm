module Main exposing (..)

import Browser exposing (..)
import Browser.Navigation exposing (..)
import Url exposing (Url)
import Time


import Configs exposing (Configs)
import Model exposing (Model, defaultModel)
import Msg exposing (Msg)
import View exposing (viewMainPage)
import Update exposing (update)

type alias Flags =
  {
    configs: Maybe Configs
  }

init : Flags -> Url -> Key -> (Model, Cmd Msg)
init flags url navKey =
  let default = defaultModel url navKey 
  in case flags.configs of
    Just cs -> ({ default | configs = cs }, Cmd.none)
    Nothing -> (default, Cmd.none)

subscriptions : Model -> Sub Msg
subscriptions model = 
  Sub.batch
  [ Time.every 1000 Msg.Tick    -- Default tick for log, etc.
  ]

main =
  Browser.application
    { init = init
    , view = viewMainPage
    , update = update
    , subscriptions = subscriptions
    , onUrlRequest = Msg.UrlRequested
    , onUrlChange = Msg.UrlChanged
    }