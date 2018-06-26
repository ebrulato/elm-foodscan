module Polymer.Polymer exposing (boolProperty, intProperty, numberProperty, stringProperty)

import Html exposing (Attribute)
import Html.Attributes exposing (property)
import Json.Encode exposing (bool, string)


boolProperty : String -> Bool -> Attribute msg
boolProperty name value =
    value
        |> Json.Encode.bool
        |> property name


stringProperty : String -> String -> Attribute msg
stringProperty name value =
    string value |> property name


numberProperty : String -> Float -> Attribute msg
numberProperty name value =
    value
        |> Json.Encode.float
        |> property name


intProperty : String -> Int -> Attribute msg
intProperty name value =
    value
        |> Json.Encode.int
        |> property name
