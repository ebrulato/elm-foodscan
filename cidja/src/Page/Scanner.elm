module Page.Scanner exposing (Model, Msg, Status(..), init, update, view)

import Codec.Product exposing (Product, ProductProduct)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Http exposing (Error)
import HttpBuilder exposing (send)
import Polymer.BarcodeScanner exposing (Code, barcodeScanner, onCode)
import Request.OpenFoodFacts exposing (get)


-- MODEL ? To delete ?


type alias Model =
    {}


type Msg
    = OnCode Code
    | OnHttpError Http.Error
    | OnProduct Product
    | OnClick


type Status
    = Error Http.Error
    | Found ProductProduct
    | Running



-- INIT --


init : Model
init =
    {}



-- VIEW --


view : Model -> Html Msg
view model =
    div []
        [ barcodeScanner [ onCode OnCode ] []

        --button [ onClick OnClick ] [ text "click me" ]
        ]



-- UPDATE --


update : Msg -> Model -> ( Model, Cmd Msg, Status )
update msg model =
    case msg of
        OnCode code ->
            ( model, send handleRequestCompleteProduct <| Request.OpenFoodFacts.get code.code, Running )

        OnProduct product ->
            case product.product of
                Nothing ->
                    ( model, Cmd.none, Running )

                Just p ->
                    ( model, Cmd.none, Found p )

        OnHttpError error ->
            ( model, Cmd.none, Error error )

        OnClick ->
            ( model, send handleRequestCompleteProduct <| Request.OpenFoodFacts.get "3229820144160", Running )


handleRequestCompleteProduct : Result Http.Error Product -> Msg
handleRequestCompleteProduct result =
    case result of
        Ok product ->
            OnProduct product

        Err error ->
            OnHttpError error
