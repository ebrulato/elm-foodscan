module Request.OpenFoodFacts exposing (get)

import Codec.Product exposing (Product, decodeProduct)
import Http
import HttpBuilder exposing (RequestBuilder, withExpect)


get : String -> RequestBuilder Product
get code =
    HttpBuilder.get ("https://ssl-api.openfoodfacts.org/api/v0/produit/" ++ code ++ ".json")
        --|> withQueryParams [ ( "apiKey", apiKey ) ]
        --|> withHeader "X-My-Header" "Some Header Value"
        |> withExpect (Http.expectJson decodeProduct)
