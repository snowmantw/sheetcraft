module Configs exposing (..)

type alias Configs = 
  {
      apiEndpoint: String
  }

defaultConfigs : Configs
defaultConfigs =
  {
      apiEndpoint = "/api/"
  }