module Polymer.BarcodeScanner exposing (Code, barcodeScanner, onCode)

import Html exposing (Attribute, Html, node)
import Html.Attributes exposing (attribute, class)
import Html.Events exposing (on, targetValue)
import Json.Decode as Json exposing (Decoder, map, string)
import Json.Decode.Pipeline exposing (decode, requiredAt)
import Polymer.Polymer exposing (boolProperty)
import Tachyons exposing (classes)
import Tachyons.Classes exposing (bg_green, white)


barcodeScanner : List (Attribute msg) -> List (Html msg) -> Html msg
barcodeScanner =
    node "barcode-scanner"


onCode : (Code -> msg) -> Attribute msg
onCode message =
    codeDecoder
        |> map message
        |> on "recognize"


codeDecoder : Decoder Code
codeDecoder =
    decode Code
        |> requiredAt [ "detail", "code" ] string


type alias Code =
    { code : String
    }
