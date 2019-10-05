module Msg exposing (..)

import Browser exposing (UrlRequest)
import Url exposing (Url)
import Time exposing (Posix)

import Coord exposing (..)
import Content exposing (..)

type Msg
    = ContentUpdated Coord Content
    | UrlRequested UrlRequest
    | UrlChanged Url
    | Tick Posix