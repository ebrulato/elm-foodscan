module Page.Error exposing (Model, Msg, init, update, view)

-- Etat terminal de l'application

import Html exposing (Attribute, Html, div, form, h1, p, text)
import Html.Attributes exposing (type_, value)
import Html.Events exposing (onClick)
import Http exposing (Error)
import Request.Helpers exposing (errorHttp2String)
import Tachyons exposing (classes)
import Tachyons.Classes exposing (..)


-- MODEL


type alias Model =
    { errorHttp : Maybe Http.Error
    , errorMsg : Maybe String
    }


init : Maybe String -> Maybe Http.Error -> Model
init errorMsg errorHttp =
    Model errorHttp errorMsg



-- MESSAGE


type Msg
    = NoOp



-- VIEW


getErrorHttpText : Maybe Http.Error -> String
getErrorHttpText error =
    case error of
        Just httpError ->
            errorHttp2String httpError

        Nothing ->
            ""


getErrorText : Maybe String -> String
getErrorText error =
    case error of
        Just string ->
            string

        Nothing ->
            ""


view : Model -> Html Msg
view model =
    div [ classes [ flex, justify_center ] ]
        [ div [ classes [ flex, flex_column, w_90 ] ]
            [ -- Html.h1 [] [ text "Erreur" ]
              Html.h1 [] [ text (getErrorHttpText model.errorHttp) ]
            , Html.h1 [] [ text (getErrorText model.errorMsg) ]
            ]
        ]



-- UPDATE


update : Msg -> Model -> Model
update msg model =
    model
