module Page.Product exposing (Model, Msg, Status(..), init, update, view)

import Codec.Product exposing (ProductProduct)
import Html exposing (Html, div, text)


type alias Model =
    { product : ProductProduct
    }


type Msg
    = NoOp


type Status
    = Running
    | Done



-- INIT --


init : ProductProduct -> Model
init product =
    Model product



-- VIEW --


view : Model -> Html Msg
view model =
    div []
        [ text model.product.id
        , text model.product.ingredients_text_fr
        , text model.product.allergens
        , text model.product.product_name
        ]



-- allergens_hierarchy
-- generic_name_fr
-- ingredients (tri des ingrédients dans l'ordre)
-- selected_images (prendre les display)
-- nutriments
--ingredients_from_palm_oil_n
-- ingredients_from_or_that_may_be_from_palm_oil_n
-- ingredients_that_may_be_from_palm_oil_tags
-- traces
-- nutrition_score_debug
-- purchase_places
-- countries (attention à la langue ?)
-- ingredients_text_with_allergens
-- brands
-- labels_prev_tags (prendre les fr:) (faire des hyperliens ?)
-- manufacturing_places ?
-- quantity
-- link
-- labels
-- UPDATE --


update : Msg -> Model -> ( Model, Cmd Msg, Status )
update msg model =
    ( model, Cmd.none, Running )
