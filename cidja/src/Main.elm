module Main exposing (..)

import Codec.Product exposing (Product)
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (src)
import Page.Error exposing (Model, Msg, init, update, view)
import Page.Product exposing (Model, Msg, Status(..), init, update, view)
import Page.Scanner exposing (Model, Msg, Status(..), init, update, view)
import Tachyons exposing (classes, tachyons)
import Tachyons.Classes exposing (avenir, center, debug, debug_grid, flex, flex_column, mw5, mw6, vh_100)


---- MODEL ----


type alias Model =
    { page : Page
    }


type Page
    = Scanner Page.Scanner.Model
    | Product Page.Product.Model
    | Error Page.Error.Model


init : ( Model, Cmd Msg )
init =
    ( Model (Scanner Page.Scanner.init), Cmd.none )



---- UPDATE ----


type Msg
    = ScannerMsg Page.Scanner.Msg
    | ProductMsg Page.Product.Msg
    | ErrorMsg Page.Error.Msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case ( model.page, msg ) of
        ( Scanner subModel, ScannerMsg subMsg ) ->
            let
                ( updatedSubModel, subCmd, status ) =
                    Page.Scanner.update subMsg subModel
            in
            case status of
                Page.Scanner.Running ->
                    ( { model | page = Scanner updatedSubModel }, Cmd.map ScannerMsg subCmd )

                Page.Scanner.Error error ->
                    ( { model | page = Error (Page.Error.init Nothing (Just error)) }, Cmd.none )

                Page.Scanner.Found product ->
                    ( { model | page = Product (Page.Product.init product) }, Cmd.none )

        ( Product subModel, ProductMsg subMsg ) ->
            let
                ( updatedSubModel, subCmd, status ) =
                    Page.Product.update subMsg subModel
            in
            case status of
                Page.Product.Running ->
                    ( { model | page = Product updatedSubModel }, Cmd.map ProductMsg subCmd )

                Page.Product.Done ->
                    ( { model | page = Scanner Page.Scanner.init }, Cmd.none )

        ( Error subModel, ErrorMsg subMsg ) ->
            let
                updatedSubModel =
                    Page.Error.update subMsg subModel
            in
            ( { model | page = Error updatedSubModel }, Cmd.none )

        _ ->
            ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div
        []
        --[ classes [ debug, debug_grid ]]
        [ tachyons.css
        , div
            [ classes
                [ flex
                , flex_column
                , avenir
                , vh_100
                , mw6
                , center
                ]
            ]
            [ viewPage model
            ]
        ]


viewPage : Model -> Html Msg
viewPage model =
    case model.page of
        Scanner subModel ->
            Page.Scanner.view subModel |> Html.map ScannerMsg

        Product subModel ->
            Page.Product.view subModel |> Html.map ProductMsg

        Error subModel ->
            Page.Error.view subModel |> Html.map ErrorMsg



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
