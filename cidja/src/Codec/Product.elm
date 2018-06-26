module Codec.Product exposing (Product, ProductProduct, decodeProduct)

-- elm-package install -- yes noredink/elm-decode-pipeline

import Json.Decode
import Json.Decode.Pipeline
import Json.Encode


type alias Product =
    { code : String
    , status : Int
    , product : Maybe ProductProduct
    , status_verbose : String
    }


type alias ProductProductLanguages_codes =
    { fr : Int
    }


type alias ProductProductNutriments =
    { energy_100g : String
    , proteins_value : String
    , energy_value : String
    , sugars_unit : String
    , saturated_fat_serving : String
    , fat_unit : String
    , fiber_unit : String
    , carbohydrates : Float
    , proteins_100g : Float
    , sugars_serving : String
    , fiber_value : String
    , fiber_100g : String
    , salt_value : String
    , saturated_fat_value : String
    , sodium : String
    , carbohydrates_value : String
    , fat : String
    , salt : String
    , sodium_100g : String
    , carbohydrates_unit : String
    , sugars : Float
    , proteins_unit : String
    , saturated_fat_unit : String
    , energy : String
    , saturated_fat_100g : String
    , fat_value : String
    , salt_serving : String
    , fiber_serving : String
    , proteins : Float
    , energy_serving : String
    , saturated_fat : String
    , fat_serving : String
    , fat_100g : String
    , carbohydrates_serving : String
    , fiber : String
    , proteins_serving : String
    , salt_100g : String
    , sugars_value : String
    , sodium_serving : String
    , salt_unit : String
    , sugars_100g : Float
    , energy_unit : String
    , carbohydrates_100g : Float
    }


type alias ProductProductSelected_imagesIngredientsThumb =
    { fr : String
    }


type alias ProductProductSelected_imagesIngredientsSmall =
    { fr : String
    }


type alias ProductProductSelected_imagesIngredientsDisplay =
    { fr : String
    }


type alias ProductProductSelected_imagesIngredients =
    { thumb : ProductProductSelected_imagesIngredientsThumb
    , small : ProductProductSelected_imagesIngredientsSmall
    , display : ProductProductSelected_imagesIngredientsDisplay
    }


type alias ProductProductSelected_imagesFrontDisplay =
    { fr : String
    }


type alias ProductProductSelected_imagesFrontSmall =
    { fr : String
    }


type alias ProductProductSelected_imagesFrontThumb =
    { fr : String
    }


type alias ProductProductSelected_imagesFront =
    { display : ProductProductSelected_imagesFrontDisplay
    , small : ProductProductSelected_imagesFrontSmall
    , thumb : ProductProductSelected_imagesFrontThumb
    }


type alias ProductProductSelected_imagesNutritionDisplay =
    { fr : String
    }


type alias ProductProductSelected_imagesNutritionThumb =
    { fr : String
    }


type alias ProductProductSelected_imagesNutritionSmall =
    { fr : String
    }


type alias ProductProductSelected_imagesNutrition =
    { display : ProductProductSelected_imagesNutritionDisplay
    , thumb : ProductProductSelected_imagesNutritionThumb
    , small : ProductProductSelected_imagesNutritionSmall
    }


type alias ProductProductSelected_images =
    { ingredients : ProductProductSelected_imagesIngredients
    , front : ProductProductSelected_imagesFront
    , nutrition : ProductProductSelected_imagesNutrition
    }


type alias ProductProductImages1Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages1Sizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages1SizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImages1Sizes =
    { m100 : ProductProductImages1Sizes100
    , m400 : ProductProductImages1Sizes400
    , full : ProductProductImages1SizesFull
    }


type alias ProductProductImages1 =
    { sizes : ProductProductImages1Sizes
    , uploader : String
    , uploaded_t : Int
    }


type alias ProductProductImages2Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages2Sizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages2SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages2Sizes =
    { m100 : ProductProductImages2Sizes100
    , m400 : ProductProductImages2Sizes400
    , full : ProductProductImages2SizesFull
    }


type alias ProductProductImages2 =
    { uploader : String
    , uploaded_t : Int
    , sizes : ProductProductImages2Sizes
    }


type alias ProductProductImages3Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages3Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages3SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages3Sizes =
    { m100 : ProductProductImages3Sizes100
    , m400 : ProductProductImages3Sizes400
    , full : ProductProductImages3SizesFull
    }


type alias ProductProductImages3 =
    { uploaded_t : Int
    , uploader : String
    , sizes : ProductProductImages3Sizes
    }


type alias ProductProductImages4Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages4Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages4SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages4Sizes =
    { m100 : ProductProductImages4Sizes100
    , m400 : ProductProductImages4Sizes400
    , full : ProductProductImages4SizesFull
    }


type alias ProductProductImages4 =
    { sizes : ProductProductImages4Sizes
    , uploaded_t : Int
    , uploader : String
    }


type alias ProductProductImages5Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages5Sizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages5SizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImages5Sizes =
    { m100 : ProductProductImages5Sizes100
    , m400 : ProductProductImages5Sizes400
    , full : ProductProductImages5SizesFull
    }


type alias ProductProductImages5 =
    { sizes : ProductProductImages5Sizes
    , uploader : String
    , uploaded_t : Int
    }


type alias ProductProductImages6Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages6Sizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages6SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages6Sizes =
    { m100 : ProductProductImages6Sizes100
    , m400 : ProductProductImages6Sizes400
    , full : ProductProductImages6SizesFull
    }


type alias ProductProductImages6 =
    { sizes : ProductProductImages6Sizes
    , uploader : String
    , uploaded_t : Int
    }


type alias ProductProductImages7Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages7Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages7SizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImages7Sizes =
    { m100 : ProductProductImages7Sizes100
    , m400 : ProductProductImages7Sizes400
    , full : ProductProductImages7SizesFull
    }


type alias ProductProductImages7 =
    { uploaded_t : Int
    , uploader : String
    , sizes : ProductProductImages7Sizes
    }


type alias ProductProductImages8Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages8Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages8SizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImages8Sizes =
    { m100 : ProductProductImages8Sizes100
    , m400 : ProductProductImages8Sizes400
    , full : ProductProductImages8SizesFull
    }


type alias ProductProductImages8 =
    { uploaded_t : Int
    , uploader : String
    , sizes : ProductProductImages8Sizes
    }


type alias ProductProductImages9Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages9Sizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages9SizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImages9Sizes =
    { m100 : ProductProductImages9Sizes100
    , m400 : ProductProductImages9Sizes400
    , full : ProductProductImages9SizesFull
    }


type alias ProductProductImages9 =
    { sizes : ProductProductImages9Sizes
    , uploaded_t : Int
    , uploader : String
    }


type alias ProductProductImages10Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages10Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages10SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages10Sizes =
    { m100 : ProductProductImages10Sizes100
    , m400 : ProductProductImages10Sizes400
    , full : ProductProductImages10SizesFull
    }


type alias ProductProductImages10 =
    { sizes : ProductProductImages10Sizes
    , uploaded_t : String
    , uploader : String
    }


type alias ProductProductImages11Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages11Sizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages11SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages11Sizes =
    { m100 : ProductProductImages11Sizes100
    , m400 : ProductProductImages11Sizes400
    , full : ProductProductImages11SizesFull
    }


type alias ProductProductImages11 =
    { uploader : String
    , uploaded_t : String
    , sizes : ProductProductImages11Sizes
    }


type alias ProductProductImages12Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages12Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages12SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages12Sizes =
    { m100 : ProductProductImages12Sizes100
    , m400 : ProductProductImages12Sizes400
    , full : ProductProductImages12SizesFull
    }


type alias ProductProductImages12 =
    { uploader : String
    , uploaded_t : String
    , sizes : ProductProductImages12Sizes
    }


type alias ProductProductImages13Sizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImages13Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages13SizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImages13Sizes =
    { m100 : ProductProductImages13Sizes100
    , m400 : ProductProductImages13Sizes400
    , full : ProductProductImages13SizesFull
    }


type alias ProductProductImages13 =
    { uploaded_t : String
    , uploader : String
    , sizes : ProductProductImages13Sizes
    }


type alias ProductProductImages14Sizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages14Sizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImages14SizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImages14Sizes =
    { m100 : ProductProductImages14Sizes100
    , m400 : ProductProductImages14Sizes400
    , full : ProductProductImages14SizesFull
    }


type alias ProductProductImages14 =
    { uploaded_t : String
    , uploader : String
    , sizes : ProductProductImages14Sizes
    }


type alias ProductProductImagesNutritionSizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutritionSizes200 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutritionSizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesNutritionSizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutritionSizes =
    { m100 : ProductProductImagesNutritionSizes100
    , m200 : ProductProductImagesNutritionSizes200
    , m400 : ProductProductImagesNutritionSizes400
    , full : ProductProductImagesNutritionSizesFull
    }


type alias ProductProductImagesNutrition =
    { rev : String
    , sizes : ProductProductImagesNutritionSizes
    , imgid : String
    , geometry : String
    , white_magic : Maybe String
    , normalize : Maybe String
    }


type alias ProductProductImagesNutrition_frSizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutrition_frSizes200 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutrition_frSizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutrition_frSizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesNutrition_frSizes =
    { m100 : ProductProductImagesNutrition_frSizes100
    , m200 : ProductProductImagesNutrition_frSizes200
    , m400 : ProductProductImagesNutrition_frSizes400
    , full : ProductProductImagesNutrition_frSizesFull
    }


type alias ProductProductImagesNutrition_fr =
    { y2 : String
    , geometry : String
    , angle : String
    , imgid : String
    , x2 : String
    , y1 : String
    , normalize : String
    , x1 : String
    , white_magic : String
    , sizes : ProductProductImagesNutrition_frSizes
    , rev : String
    }


type alias ProductProductImagesFrontSizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesFrontSizes200 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesFrontSizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesFrontSizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesFrontSizes =
    { m100 : ProductProductImagesFrontSizes100
    , m200 : ProductProductImagesFrontSizes200
    , m400 : ProductProductImagesFrontSizes400
    , full : ProductProductImagesFrontSizesFull
    }


type alias ProductProductImagesFront =
    { geometry : String
    , normalize : String
    , white_magic : Maybe String
    , rev : String
    , imgid : String
    , sizes : ProductProductImagesFrontSizes
    }


type alias ProductProductImagesFront_frSizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesFront_frSizes200 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesFront_frSizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesFront_frSizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesFront_frSizes =
    { m100 : ProductProductImagesFront_frSizes100
    , m200 : ProductProductImagesFront_frSizes200
    , m400 : ProductProductImagesFront_frSizes400
    , full : ProductProductImagesFront_frSizesFull
    }


type alias ProductProductImagesFront_fr =
    { y1 : String
    , white_magic : String
    , x1 : String
    , normalize : String
    , sizes : ProductProductImagesFront_frSizes
    , rev : String
    , y2 : String
    , angle : String
    , geometry : String
    , imgid : String
    , x2 : String
    }


type alias ProductProductImagesIngredientsSizes100 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesIngredientsSizes200 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesIngredientsSizes400 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesIngredientsSizesFull =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesIngredientsSizes =
    { m100 : ProductProductImagesIngredientsSizes100
    , m200 : ProductProductImagesIngredientsSizes200
    , m400 : ProductProductImagesIngredientsSizes400
    , full : ProductProductImagesIngredientsSizesFull
    }


type alias ProductProductImagesIngredients =
    { imgid : String
    , sizes : ProductProductImagesIngredientsSizes
    , rev : String
    , geometry : String
    , white_magic : Maybe String
    , normalize : Maybe String
    }


type alias ProductProductImagesIngredients_frSizes100 =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesIngredients_frSizes200 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesIngredients_frSizes400 =
    { w : Int
    , h : Int
    }


type alias ProductProductImagesIngredients_frSizesFull =
    { h : Int
    , w : Int
    }


type alias ProductProductImagesIngredients_frSizes =
    { m100 : ProductProductImagesIngredients_frSizes100
    , m200 : ProductProductImagesIngredients_frSizes200
    , m400 : ProductProductImagesIngredients_frSizes400
    , full : ProductProductImagesIngredients_frSizesFull
    }


type alias ProductProductImagesIngredients_fr =
    { y2 : Maybe String
    , geometry : String
    , angle : Maybe String
    , x2 : Maybe String
    , imgid : String
    , y1 : Maybe String
    , normalize : String
    , x1 : Maybe String
    , white_magic : String
    , rev : String
    , sizes : ProductProductImagesIngredients_frSizes
    }


type alias ProductProductImages =
    { m1 : ProductProductImages1
    , m2 : ProductProductImages2
    , m3 : ProductProductImages3
    , m4 : ProductProductImages4
    , m5 : ProductProductImages5
    , m6 : ProductProductImages6
    , m7 : ProductProductImages7
    , m8 : ProductProductImages8
    , m9 : ProductProductImages9
    , m10 : ProductProductImages10
    , m11 : ProductProductImages11
    , m12 : ProductProductImages12
    , m13 : ProductProductImages13
    , m14 : ProductProductImages14
    , nutrition : ProductProductImagesNutrition
    , nutrition_fr : ProductProductImagesNutrition_fr
    , front : ProductProductImagesFront
    , front_fr : ProductProductImagesFront_fr
    , ingredients : ProductProductImagesIngredients
    , ingredients_fr : ProductProductImagesIngredients_fr
    }


type alias ProductProductNutrient_levels =
    {}


type alias ProductProductLanguages =
    { en_french : Int
    }


type alias ProductProduct =
    { purchase_places_tags : List String
    , ingredients_ids_debug : List String
    , cities_tags : List String
    , states : String
    , labels_hierarchy : List String
    , ingredients_n : String
    , minerals_prev_tags : List String
    , ingredients_text_fr_debug_tags : List String
    , informers_tags : List String
    , image_small_url : String
    , pnns_groups_2 : String
    , amino_acids_tags : List String
    , id : String
    , generic_name_fr_debug_tags : List String
    , labels_debug_tags : List String
    , id2 : String
    , allergens : String
    , completed_t : Int
    , fruits_vegetables_nuts_100g_estimate : Int
    , ingredients_text_fr : String
    , image_ingredients_thumb_url : String
    , unknown_ingredients_n : Int
    , additives_prev_tags : List String
    , categories_prev_hierarchy : List String
    , pnns_groups_1 : String
    , nutrition_data_per : String
    , nutrition_data_prepared_per : String
    , additives_tags : List String
    , entry_dates_tags : List String
    , additives_prev_n : Int
    , ingredients_text_with_allergens : String
    , traces_tags : List String
    , countries_hierarchy : List String
    , last_modified_t : Int
    , product_quantity : Int
    , brands_tags : List String
    , product_name : String
    , labels_prev_tags : List String
    , nucleotides_prev_tags : List String
    , expiration_date_debug_tags : List String
    , countries_debug_tags : List String
    , link_debug_tags : List String
    , manufacturing_places : String
    , max_imgid : String
    , image_thumb_url : String
    , pnns_groups_1_tags : List String
    , nutrition_score_debug : String
    , countries : String
    , unique_scans_n : Int
    , ingredients_n_tags : List String
    , no_nutrition_data : String
    , serving_size_debug_tags : List String
    , languages_hierarchy : List String
    , purchase_places : String
    , additives : String
    , languages_codes : ProductProductLanguages_codes
    , additives_old_tags : List String
    , traces : String
    , last_image_dates_tags : List String
    , nutriments : ProductProductNutriments
    , ingredients_from_palm_oil_n : Int
    , misc_tags : List String
    , categories_hierarchy : List String
    , languages_tags : List String
    , image_nutrition_url : String
    , codes_tags : List String
    , nutrient_levels_tags : List String
    , generic_name_fr : String
    , additives_n : Int
    , selected_images : ProductProductSelected_images
    , last_image_t : Int
    , debug_param_sorted_langs : List String
    , additives_debug_tags : List String
    , ingredients_from_or_that_may_be_from_palm_oil_n : Int
    , serving_size : String
    , complete : Int
    , lang : String
    , labels_tags : List String
    , created_t : Int
    , image_nutrition_small_url : String
    , brands : String
    , packaging : String
    , ingredients_that_may_be_from_palm_oil_n : Int
    , image_ingredients_small_url : String
    , traces_debug_tags : List String
    , nutrition_data_per_debug_tags : List String
    , unknown_nutrients_tags : List String
    , emb_codes_orig : String
    , additives_prev_original_tags : List String
    , allergens_tags : List String
    , rev : Int
    , nucleotides_tags : List String
    , interface_version_created : String
    , creator : String
    , categories_debug_tags : List String
    , packaging_tags : List String
    , categories_tags : List String
    , scans_n : Int
    , labels_prev_hierarchy : List String
    , last_edit_dates_tags : List String
    , countries_tags : List String
    , keywords2 : List String
    , ingredients_text_with_allergens_fr : String
    , minerals_tags : List String
    , checkers_tags : List String
    , categories_prev_tags : List String
    , new_additives_n : Int
    , purchase_places_debug_tags : List String
    , images : ProductProductImages
    , interface_version_modified : String
    , ingredients_tags : List String
    , vitamins_tags : List String
    , nutrition_grades_tags : List String
    , quality_tags : List String
    , amino_acids_prev_tags : List String
    , manufacturing_places_tags : List String
    , product_name_fr : String
    , stores_tags : List String
    , update_key : String
    , image_ingredients_url : String
    , correctors_tags : List String
    , quantity_debug_tags : List String
    , serving_quantity : Int
    , origins_tags : List String
    , brands_debug_tags : List String
    , code : String
    , last_modified_by : Maybe String
    , quantity : String
    , sortkey : Int
    , editors_tags : List String
    , lang_debug_tags : List String
    , traces_hierarchy : List String
    , generic_name : String
    , pnns_groups_2_tags : List String
    , categories : String
    , product_name_fr_debug_tags : List String
    , ingredients_from_palm_oil_tags : List String
    , lc : String
    , image_front_thumb_url : String
    , emb_codes : String
    , expiration_date : String
    , editors : List String
    , origins_debug_tags : List String
    , image_url : String
    , additives_prev : String
    , last_editor : Maybe String
    , photographers_tags : List String
    , origins : String
    , ingredients_hierarchy : List String
    , emb_codes_tags : List String
    , stores_debug_tags : List String
    , image_front_url : String
    , allergens_hierarchy : List String
    , packaging_debug_tags : List String
    , product_name_debug_tags : List String
    , additives_old_n : Int
    , manufacturing_places_debug_tags : List String
    , emb_codes_20141016 : String
    , link : String
    , ingredients_text : String
    , vitamins_prev_tags : List String
    , image_front_small_url : String
    , emb_codes_debug_tags : List String
    , states_tags : List String
    , ingredients_that_may_be_from_palm_oil_tags : List String
    , stores : String
    , image_nutrition_thumb_url : String
    , labels : String
    , additives_original_tags : List String
    , ingredients_text_debug : String
    , states_hierarchy : List String
    }


decodeProduct : Json.Decode.Decoder Product
decodeProduct =
    Json.Decode.Pipeline.decode Product
        |> Json.Decode.Pipeline.required "code" Json.Decode.string
        |> Json.Decode.Pipeline.required "status" Json.Decode.int
        |> Json.Decode.Pipeline.optional "product" (Json.Decode.maybe decodeProductProduct) Nothing
        |> Json.Decode.Pipeline.required "status_verbose" Json.Decode.string


decodeProductProductLanguages_codes : Json.Decode.Decoder ProductProductLanguages_codes
decodeProductProductLanguages_codes =
    Json.Decode.Pipeline.decode ProductProductLanguages_codes
        |> Json.Decode.Pipeline.required "fr" Json.Decode.int


decodeProductProductNutriments : Json.Decode.Decoder ProductProductNutriments
decodeProductProductNutriments =
    Json.Decode.Pipeline.decode ProductProductNutriments
        |> Json.Decode.Pipeline.required "energy_100g" Json.Decode.string
        |> Json.Decode.Pipeline.required "proteins_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "energy_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "sugars_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "saturated-fat_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "fat_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "fiber_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "carbohydrates" Json.Decode.float
        |> Json.Decode.Pipeline.required "proteins_100g" Json.Decode.float
        |> Json.Decode.Pipeline.required "sugars_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "fiber_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "fiber_100g" Json.Decode.string
        |> Json.Decode.Pipeline.required "salt_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "saturated-fat_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "sodium" Json.Decode.string
        |> Json.Decode.Pipeline.required "carbohydrates_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "fat" Json.Decode.string
        |> Json.Decode.Pipeline.required "salt" Json.Decode.string
        |> Json.Decode.Pipeline.required "sodium_100g" Json.Decode.string
        |> Json.Decode.Pipeline.required "carbohydrates_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "sugars" Json.Decode.float
        |> Json.Decode.Pipeline.required "proteins_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "saturated-fat_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "energy" Json.Decode.string
        |> Json.Decode.Pipeline.required "saturated-fat_100g" Json.Decode.string
        |> Json.Decode.Pipeline.required "fat_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "salt_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "fiber_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "proteins" Json.Decode.float
        |> Json.Decode.Pipeline.required "energy_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "saturated-fat" Json.Decode.string
        |> Json.Decode.Pipeline.required "fat_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "fat_100g" Json.Decode.string
        |> Json.Decode.Pipeline.required "carbohydrates_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "fiber" Json.Decode.string
        |> Json.Decode.Pipeline.required "proteins_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "salt_100g" Json.Decode.string
        |> Json.Decode.Pipeline.required "sugars_value" Json.Decode.string
        |> Json.Decode.Pipeline.required "sodium_serving" Json.Decode.string
        |> Json.Decode.Pipeline.required "salt_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "sugars_100g" Json.Decode.float
        |> Json.Decode.Pipeline.required "energy_unit" Json.Decode.string
        |> Json.Decode.Pipeline.required "carbohydrates_100g" Json.Decode.float


decodeProductProductSelected_imagesIngredientsThumb : Json.Decode.Decoder ProductProductSelected_imagesIngredientsThumb
decodeProductProductSelected_imagesIngredientsThumb =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesIngredientsThumb
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesIngredientsSmall : Json.Decode.Decoder ProductProductSelected_imagesIngredientsSmall
decodeProductProductSelected_imagesIngredientsSmall =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesIngredientsSmall
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesIngredientsDisplay : Json.Decode.Decoder ProductProductSelected_imagesIngredientsDisplay
decodeProductProductSelected_imagesIngredientsDisplay =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesIngredientsDisplay
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesIngredients : Json.Decode.Decoder ProductProductSelected_imagesIngredients
decodeProductProductSelected_imagesIngredients =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesIngredients
        |> Json.Decode.Pipeline.required "thumb" decodeProductProductSelected_imagesIngredientsThumb
        |> Json.Decode.Pipeline.required "small" decodeProductProductSelected_imagesIngredientsSmall
        |> Json.Decode.Pipeline.required "display" decodeProductProductSelected_imagesIngredientsDisplay


decodeProductProductSelected_imagesFrontDisplay : Json.Decode.Decoder ProductProductSelected_imagesFrontDisplay
decodeProductProductSelected_imagesFrontDisplay =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesFrontDisplay
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesFrontSmall : Json.Decode.Decoder ProductProductSelected_imagesFrontSmall
decodeProductProductSelected_imagesFrontSmall =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesFrontSmall
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesFrontThumb : Json.Decode.Decoder ProductProductSelected_imagesFrontThumb
decodeProductProductSelected_imagesFrontThumb =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesFrontThumb
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesFront : Json.Decode.Decoder ProductProductSelected_imagesFront
decodeProductProductSelected_imagesFront =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesFront
        |> Json.Decode.Pipeline.required "display" decodeProductProductSelected_imagesFrontDisplay
        |> Json.Decode.Pipeline.required "small" decodeProductProductSelected_imagesFrontSmall
        |> Json.Decode.Pipeline.required "thumb" decodeProductProductSelected_imagesFrontThumb


decodeProductProductSelected_imagesNutritionDisplay : Json.Decode.Decoder ProductProductSelected_imagesNutritionDisplay
decodeProductProductSelected_imagesNutritionDisplay =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesNutritionDisplay
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesNutritionThumb : Json.Decode.Decoder ProductProductSelected_imagesNutritionThumb
decodeProductProductSelected_imagesNutritionThumb =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesNutritionThumb
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesNutritionSmall : Json.Decode.Decoder ProductProductSelected_imagesNutritionSmall
decodeProductProductSelected_imagesNutritionSmall =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesNutritionSmall
        |> Json.Decode.Pipeline.required "fr" Json.Decode.string


decodeProductProductSelected_imagesNutrition : Json.Decode.Decoder ProductProductSelected_imagesNutrition
decodeProductProductSelected_imagesNutrition =
    Json.Decode.Pipeline.decode ProductProductSelected_imagesNutrition
        |> Json.Decode.Pipeline.required "display" decodeProductProductSelected_imagesNutritionDisplay
        |> Json.Decode.Pipeline.required "thumb" decodeProductProductSelected_imagesNutritionThumb
        |> Json.Decode.Pipeline.required "small" decodeProductProductSelected_imagesNutritionSmall


decodeProductProductSelected_images : Json.Decode.Decoder ProductProductSelected_images
decodeProductProductSelected_images =
    Json.Decode.Pipeline.decode ProductProductSelected_images
        |> Json.Decode.Pipeline.required "ingredients" decodeProductProductSelected_imagesIngredients
        |> Json.Decode.Pipeline.required "front" decodeProductProductSelected_imagesFront
        |> Json.Decode.Pipeline.required "nutrition" decodeProductProductSelected_imagesNutrition


decodeProductProductImages1Sizes100 : Json.Decode.Decoder ProductProductImages1Sizes100
decodeProductProductImages1Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages1Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages1Sizes400 : Json.Decode.Decoder ProductProductImages1Sizes400
decodeProductProductImages1Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages1Sizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages1SizesFull : Json.Decode.Decoder ProductProductImages1SizesFull
decodeProductProductImages1SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages1SizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages1Sizes : Json.Decode.Decoder ProductProductImages1Sizes
decodeProductProductImages1Sizes =
    Json.Decode.Pipeline.decode ProductProductImages1Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages1Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages1Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages1SizesFull


decodeProductProductImages1 : Json.Decode.Decoder ProductProductImages1
decodeProductProductImages1 =
    Json.Decode.Pipeline.decode ProductProductImages1
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages1Sizes
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int


decodeProductProductImages2Sizes100 : Json.Decode.Decoder ProductProductImages2Sizes100
decodeProductProductImages2Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages2Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages2Sizes400 : Json.Decode.Decoder ProductProductImages2Sizes400
decodeProductProductImages2Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages2Sizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages2SizesFull : Json.Decode.Decoder ProductProductImages2SizesFull
decodeProductProductImages2SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages2SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages2Sizes : Json.Decode.Decoder ProductProductImages2Sizes
decodeProductProductImages2Sizes =
    Json.Decode.Pipeline.decode ProductProductImages2Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages2Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages2Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages2SizesFull


decodeProductProductImages2 : Json.Decode.Decoder ProductProductImages2
decodeProductProductImages2 =
    Json.Decode.Pipeline.decode ProductProductImages2
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages2Sizes


decodeProductProductImages3Sizes100 : Json.Decode.Decoder ProductProductImages3Sizes100
decodeProductProductImages3Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages3Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages3Sizes400 : Json.Decode.Decoder ProductProductImages3Sizes400
decodeProductProductImages3Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages3Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages3SizesFull : Json.Decode.Decoder ProductProductImages3SizesFull
decodeProductProductImages3SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages3SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages3Sizes : Json.Decode.Decoder ProductProductImages3Sizes
decodeProductProductImages3Sizes =
    Json.Decode.Pipeline.decode ProductProductImages3Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages3Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages3Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages3SizesFull


decodeProductProductImages3 : Json.Decode.Decoder ProductProductImages3
decodeProductProductImages3 =
    Json.Decode.Pipeline.decode ProductProductImages3
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages3Sizes


decodeProductProductImages4Sizes100 : Json.Decode.Decoder ProductProductImages4Sizes100
decodeProductProductImages4Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages4Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages4Sizes400 : Json.Decode.Decoder ProductProductImages4Sizes400
decodeProductProductImages4Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages4Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages4SizesFull : Json.Decode.Decoder ProductProductImages4SizesFull
decodeProductProductImages4SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages4SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages4Sizes : Json.Decode.Decoder ProductProductImages4Sizes
decodeProductProductImages4Sizes =
    Json.Decode.Pipeline.decode ProductProductImages4Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages4Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages4Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages4SizesFull


decodeProductProductImages4 : Json.Decode.Decoder ProductProductImages4
decodeProductProductImages4 =
    Json.Decode.Pipeline.decode ProductProductImages4
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages4Sizes
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string


decodeProductProductImages5Sizes100 : Json.Decode.Decoder ProductProductImages5Sizes100
decodeProductProductImages5Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages5Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages5Sizes400 : Json.Decode.Decoder ProductProductImages5Sizes400
decodeProductProductImages5Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages5Sizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages5SizesFull : Json.Decode.Decoder ProductProductImages5SizesFull
decodeProductProductImages5SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages5SizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages5Sizes : Json.Decode.Decoder ProductProductImages5Sizes
decodeProductProductImages5Sizes =
    Json.Decode.Pipeline.decode ProductProductImages5Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages5Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages5Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages5SizesFull


decodeProductProductImages5 : Json.Decode.Decoder ProductProductImages5
decodeProductProductImages5 =
    Json.Decode.Pipeline.decode ProductProductImages5
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages5Sizes
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int


decodeProductProductImages6Sizes100 : Json.Decode.Decoder ProductProductImages6Sizes100
decodeProductProductImages6Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages6Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages6Sizes400 : Json.Decode.Decoder ProductProductImages6Sizes400
decodeProductProductImages6Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages6Sizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages6SizesFull : Json.Decode.Decoder ProductProductImages6SizesFull
decodeProductProductImages6SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages6SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages6Sizes : Json.Decode.Decoder ProductProductImages6Sizes
decodeProductProductImages6Sizes =
    Json.Decode.Pipeline.decode ProductProductImages6Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages6Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages6Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages6SizesFull


decodeProductProductImages6 : Json.Decode.Decoder ProductProductImages6
decodeProductProductImages6 =
    Json.Decode.Pipeline.decode ProductProductImages6
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages6Sizes
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int


decodeProductProductImages7Sizes100 : Json.Decode.Decoder ProductProductImages7Sizes100
decodeProductProductImages7Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages7Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages7Sizes400 : Json.Decode.Decoder ProductProductImages7Sizes400
decodeProductProductImages7Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages7Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages7SizesFull : Json.Decode.Decoder ProductProductImages7SizesFull
decodeProductProductImages7SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages7SizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages7Sizes : Json.Decode.Decoder ProductProductImages7Sizes
decodeProductProductImages7Sizes =
    Json.Decode.Pipeline.decode ProductProductImages7Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages7Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages7Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages7SizesFull


decodeProductProductImages7 : Json.Decode.Decoder ProductProductImages7
decodeProductProductImages7 =
    Json.Decode.Pipeline.decode ProductProductImages7
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages7Sizes


decodeProductProductImages8Sizes100 : Json.Decode.Decoder ProductProductImages8Sizes100
decodeProductProductImages8Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages8Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages8Sizes400 : Json.Decode.Decoder ProductProductImages8Sizes400
decodeProductProductImages8Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages8Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages8SizesFull : Json.Decode.Decoder ProductProductImages8SizesFull
decodeProductProductImages8SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages8SizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages8Sizes : Json.Decode.Decoder ProductProductImages8Sizes
decodeProductProductImages8Sizes =
    Json.Decode.Pipeline.decode ProductProductImages8Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages8Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages8Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages8SizesFull


decodeProductProductImages8 : Json.Decode.Decoder ProductProductImages8
decodeProductProductImages8 =
    Json.Decode.Pipeline.decode ProductProductImages8
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages8Sizes


decodeProductProductImages9Sizes100 : Json.Decode.Decoder ProductProductImages9Sizes100
decodeProductProductImages9Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages9Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages9Sizes400 : Json.Decode.Decoder ProductProductImages9Sizes400
decodeProductProductImages9Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages9Sizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages9SizesFull : Json.Decode.Decoder ProductProductImages9SizesFull
decodeProductProductImages9SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages9SizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages9Sizes : Json.Decode.Decoder ProductProductImages9Sizes
decodeProductProductImages9Sizes =
    Json.Decode.Pipeline.decode ProductProductImages9Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages9Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages9Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages9SizesFull


decodeProductProductImages9 : Json.Decode.Decoder ProductProductImages9
decodeProductProductImages9 =
    Json.Decode.Pipeline.decode ProductProductImages9
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages9Sizes
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string


decodeProductProductImages10Sizes100 : Json.Decode.Decoder ProductProductImages10Sizes100
decodeProductProductImages10Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages10Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages10Sizes400 : Json.Decode.Decoder ProductProductImages10Sizes400
decodeProductProductImages10Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages10Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages10SizesFull : Json.Decode.Decoder ProductProductImages10SizesFull
decodeProductProductImages10SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages10SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages10Sizes : Json.Decode.Decoder ProductProductImages10Sizes
decodeProductProductImages10Sizes =
    Json.Decode.Pipeline.decode ProductProductImages10Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages10Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages10Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages10SizesFull


decodeProductProductImages10 : Json.Decode.Decoder ProductProductImages10
decodeProductProductImages10 =
    Json.Decode.Pipeline.decode ProductProductImages10
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages10Sizes
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string


decodeProductProductImages11Sizes100 : Json.Decode.Decoder ProductProductImages11Sizes100
decodeProductProductImages11Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages11Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages11Sizes400 : Json.Decode.Decoder ProductProductImages11Sizes400
decodeProductProductImages11Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages11Sizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages11SizesFull : Json.Decode.Decoder ProductProductImages11SizesFull
decodeProductProductImages11SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages11SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages11Sizes : Json.Decode.Decoder ProductProductImages11Sizes
decodeProductProductImages11Sizes =
    Json.Decode.Pipeline.decode ProductProductImages11Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages11Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages11Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages11SizesFull


decodeProductProductImages11 : Json.Decode.Decoder ProductProductImages11
decodeProductProductImages11 =
    Json.Decode.Pipeline.decode ProductProductImages11
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages11Sizes


decodeProductProductImages12Sizes100 : Json.Decode.Decoder ProductProductImages12Sizes100
decodeProductProductImages12Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages12Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages12Sizes400 : Json.Decode.Decoder ProductProductImages12Sizes400
decodeProductProductImages12Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages12Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages12SizesFull : Json.Decode.Decoder ProductProductImages12SizesFull
decodeProductProductImages12SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages12SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages12Sizes : Json.Decode.Decoder ProductProductImages12Sizes
decodeProductProductImages12Sizes =
    Json.Decode.Pipeline.decode ProductProductImages12Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages12Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages12Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages12SizesFull


decodeProductProductImages12 : Json.Decode.Decoder ProductProductImages12
decodeProductProductImages12 =
    Json.Decode.Pipeline.decode ProductProductImages12
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages12Sizes


decodeProductProductImages13Sizes100 : Json.Decode.Decoder ProductProductImages13Sizes100
decodeProductProductImages13Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages13Sizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages13Sizes400 : Json.Decode.Decoder ProductProductImages13Sizes400
decodeProductProductImages13Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages13Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages13SizesFull : Json.Decode.Decoder ProductProductImages13SizesFull
decodeProductProductImages13SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages13SizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImages13Sizes : Json.Decode.Decoder ProductProductImages13Sizes
decodeProductProductImages13Sizes =
    Json.Decode.Pipeline.decode ProductProductImages13Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages13Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages13Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages13SizesFull


decodeProductProductImages13 : Json.Decode.Decoder ProductProductImages13
decodeProductProductImages13 =
    Json.Decode.Pipeline.decode ProductProductImages13
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages13Sizes


decodeProductProductImages14Sizes100 : Json.Decode.Decoder ProductProductImages14Sizes100
decodeProductProductImages14Sizes100 =
    Json.Decode.Pipeline.decode ProductProductImages14Sizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages14Sizes400 : Json.Decode.Decoder ProductProductImages14Sizes400
decodeProductProductImages14Sizes400 =
    Json.Decode.Pipeline.decode ProductProductImages14Sizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages14SizesFull : Json.Decode.Decoder ProductProductImages14SizesFull
decodeProductProductImages14SizesFull =
    Json.Decode.Pipeline.decode ProductProductImages14SizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImages14Sizes : Json.Decode.Decoder ProductProductImages14Sizes
decodeProductProductImages14Sizes =
    Json.Decode.Pipeline.decode ProductProductImages14Sizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImages14Sizes100
        |> Json.Decode.Pipeline.required "400" decodeProductProductImages14Sizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImages14SizesFull


decodeProductProductImages14 : Json.Decode.Decoder ProductProductImages14
decodeProductProductImages14 =
    Json.Decode.Pipeline.decode ProductProductImages14
        |> Json.Decode.Pipeline.required "uploaded_t" Json.Decode.string
        |> Json.Decode.Pipeline.required "uploader" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImages14Sizes


decodeProductProductImagesNutritionSizes100 : Json.Decode.Decoder ProductProductImagesNutritionSizes100
decodeProductProductImagesNutritionSizes100 =
    Json.Decode.Pipeline.decode ProductProductImagesNutritionSizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutritionSizes200 : Json.Decode.Decoder ProductProductImagesNutritionSizes200
decodeProductProductImagesNutritionSizes200 =
    Json.Decode.Pipeline.decode ProductProductImagesNutritionSizes200
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutritionSizes400 : Json.Decode.Decoder ProductProductImagesNutritionSizes400
decodeProductProductImagesNutritionSizes400 =
    Json.Decode.Pipeline.decode ProductProductImagesNutritionSizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesNutritionSizesFull : Json.Decode.Decoder ProductProductImagesNutritionSizesFull
decodeProductProductImagesNutritionSizesFull =
    Json.Decode.Pipeline.decode ProductProductImagesNutritionSizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutritionSizes : Json.Decode.Decoder ProductProductImagesNutritionSizes
decodeProductProductImagesNutritionSizes =
    Json.Decode.Pipeline.decode ProductProductImagesNutritionSizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImagesNutritionSizes100
        |> Json.Decode.Pipeline.required "200" decodeProductProductImagesNutritionSizes200
        |> Json.Decode.Pipeline.required "400" decodeProductProductImagesNutritionSizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImagesNutritionSizesFull


decodeProductProductImagesNutrition : Json.Decode.Decoder ProductProductImagesNutrition
decodeProductProductImagesNutrition =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition
        |> Json.Decode.Pipeline.required "rev" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImagesNutritionSizes
        |> Json.Decode.Pipeline.required "imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "geometry" Json.Decode.string
        |> Json.Decode.Pipeline.required "white_magic" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "normalize" (Json.Decode.maybe Json.Decode.string)


decodeProductProductImagesNutrition_frSizes100 : Json.Decode.Decoder ProductProductImagesNutrition_frSizes100
decodeProductProductImagesNutrition_frSizes100 =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition_frSizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutrition_frSizes200 : Json.Decode.Decoder ProductProductImagesNutrition_frSizes200
decodeProductProductImagesNutrition_frSizes200 =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition_frSizes200
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutrition_frSizes400 : Json.Decode.Decoder ProductProductImagesNutrition_frSizes400
decodeProductProductImagesNutrition_frSizes400 =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition_frSizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutrition_frSizesFull : Json.Decode.Decoder ProductProductImagesNutrition_frSizesFull
decodeProductProductImagesNutrition_frSizesFull =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition_frSizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesNutrition_frSizes : Json.Decode.Decoder ProductProductImagesNutrition_frSizes
decodeProductProductImagesNutrition_frSizes =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition_frSizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImagesNutrition_frSizes100
        |> Json.Decode.Pipeline.required "200" decodeProductProductImagesNutrition_frSizes200
        |> Json.Decode.Pipeline.required "400" decodeProductProductImagesNutrition_frSizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImagesNutrition_frSizesFull


decodeProductProductImagesNutrition_fr : Json.Decode.Decoder ProductProductImagesNutrition_fr
decodeProductProductImagesNutrition_fr =
    Json.Decode.Pipeline.decode ProductProductImagesNutrition_fr
        |> Json.Decode.Pipeline.required "y2" Json.Decode.string
        |> Json.Decode.Pipeline.required "geometry" Json.Decode.string
        |> Json.Decode.Pipeline.required "angle" Json.Decode.string
        |> Json.Decode.Pipeline.required "imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "x2" Json.Decode.string
        |> Json.Decode.Pipeline.required "y1" Json.Decode.string
        |> Json.Decode.Pipeline.required "normalize" Json.Decode.string
        |> Json.Decode.Pipeline.required "x1" Json.Decode.string
        |> Json.Decode.Pipeline.required "white_magic" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImagesNutrition_frSizes
        |> Json.Decode.Pipeline.required "rev" Json.Decode.string


decodeProductProductImagesFrontSizes100 : Json.Decode.Decoder ProductProductImagesFrontSizes100
decodeProductProductImagesFrontSizes100 =
    Json.Decode.Pipeline.decode ProductProductImagesFrontSizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesFrontSizes200 : Json.Decode.Decoder ProductProductImagesFrontSizes200
decodeProductProductImagesFrontSizes200 =
    Json.Decode.Pipeline.decode ProductProductImagesFrontSizes200
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesFrontSizes400 : Json.Decode.Decoder ProductProductImagesFrontSizes400
decodeProductProductImagesFrontSizes400 =
    Json.Decode.Pipeline.decode ProductProductImagesFrontSizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesFrontSizesFull : Json.Decode.Decoder ProductProductImagesFrontSizesFull
decodeProductProductImagesFrontSizesFull =
    Json.Decode.Pipeline.decode ProductProductImagesFrontSizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesFrontSizes : Json.Decode.Decoder ProductProductImagesFrontSizes
decodeProductProductImagesFrontSizes =
    Json.Decode.Pipeline.decode ProductProductImagesFrontSizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImagesFrontSizes100
        |> Json.Decode.Pipeline.required "200" decodeProductProductImagesFrontSizes200
        |> Json.Decode.Pipeline.required "400" decodeProductProductImagesFrontSizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImagesFrontSizesFull


decodeProductProductImagesFront : Json.Decode.Decoder ProductProductImagesFront
decodeProductProductImagesFront =
    Json.Decode.Pipeline.decode ProductProductImagesFront
        |> Json.Decode.Pipeline.required "geometry" Json.Decode.string
        |> Json.Decode.Pipeline.required "normalize" Json.Decode.string
        |> Json.Decode.Pipeline.required "white_magic" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "rev" Json.Decode.string
        |> Json.Decode.Pipeline.required "imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImagesFrontSizes


decodeProductProductImagesFront_frSizes100 : Json.Decode.Decoder ProductProductImagesFront_frSizes100
decodeProductProductImagesFront_frSizes100 =
    Json.Decode.Pipeline.decode ProductProductImagesFront_frSizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesFront_frSizes200 : Json.Decode.Decoder ProductProductImagesFront_frSizes200
decodeProductProductImagesFront_frSizes200 =
    Json.Decode.Pipeline.decode ProductProductImagesFront_frSizes200
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesFront_frSizes400 : Json.Decode.Decoder ProductProductImagesFront_frSizes400
decodeProductProductImagesFront_frSizes400 =
    Json.Decode.Pipeline.decode ProductProductImagesFront_frSizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesFront_frSizesFull : Json.Decode.Decoder ProductProductImagesFront_frSizesFull
decodeProductProductImagesFront_frSizesFull =
    Json.Decode.Pipeline.decode ProductProductImagesFront_frSizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesFront_frSizes : Json.Decode.Decoder ProductProductImagesFront_frSizes
decodeProductProductImagesFront_frSizes =
    Json.Decode.Pipeline.decode ProductProductImagesFront_frSizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImagesFront_frSizes100
        |> Json.Decode.Pipeline.required "200" decodeProductProductImagesFront_frSizes200
        |> Json.Decode.Pipeline.required "400" decodeProductProductImagesFront_frSizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImagesFront_frSizesFull


decodeProductProductImagesFront_fr : Json.Decode.Decoder ProductProductImagesFront_fr
decodeProductProductImagesFront_fr =
    Json.Decode.Pipeline.decode ProductProductImagesFront_fr
        |> Json.Decode.Pipeline.required "y1" Json.Decode.string
        |> Json.Decode.Pipeline.required "white_magic" Json.Decode.string
        |> Json.Decode.Pipeline.required "x1" Json.Decode.string
        |> Json.Decode.Pipeline.required "normalize" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImagesFront_frSizes
        |> Json.Decode.Pipeline.required "rev" Json.Decode.string
        |> Json.Decode.Pipeline.required "y2" Json.Decode.string
        |> Json.Decode.Pipeline.required "angle" Json.Decode.string
        |> Json.Decode.Pipeline.required "geometry" Json.Decode.string
        |> Json.Decode.Pipeline.required "imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "x2" Json.Decode.string


decodeProductProductImagesIngredientsSizes100 : Json.Decode.Decoder ProductProductImagesIngredientsSizes100
decodeProductProductImagesIngredientsSizes100 =
    Json.Decode.Pipeline.decode ProductProductImagesIngredientsSizes100
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesIngredientsSizes200 : Json.Decode.Decoder ProductProductImagesIngredientsSizes200
decodeProductProductImagesIngredientsSizes200 =
    Json.Decode.Pipeline.decode ProductProductImagesIngredientsSizes200
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesIngredientsSizes400 : Json.Decode.Decoder ProductProductImagesIngredientsSizes400
decodeProductProductImagesIngredientsSizes400 =
    Json.Decode.Pipeline.decode ProductProductImagesIngredientsSizes400
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesIngredientsSizesFull : Json.Decode.Decoder ProductProductImagesIngredientsSizesFull
decodeProductProductImagesIngredientsSizesFull =
    Json.Decode.Pipeline.decode ProductProductImagesIngredientsSizesFull
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesIngredientsSizes : Json.Decode.Decoder ProductProductImagesIngredientsSizes
decodeProductProductImagesIngredientsSizes =
    Json.Decode.Pipeline.decode ProductProductImagesIngredientsSizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImagesIngredientsSizes100
        |> Json.Decode.Pipeline.required "200" decodeProductProductImagesIngredientsSizes200
        |> Json.Decode.Pipeline.required "400" decodeProductProductImagesIngredientsSizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImagesIngredientsSizesFull


decodeProductProductImagesIngredients : Json.Decode.Decoder ProductProductImagesIngredients
decodeProductProductImagesIngredients =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients
        |> Json.Decode.Pipeline.required "imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImagesIngredientsSizes
        |> Json.Decode.Pipeline.required "rev" Json.Decode.string
        |> Json.Decode.Pipeline.required "geometry" Json.Decode.string
        |> Json.Decode.Pipeline.required "white_magic" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "normalize" (Json.Decode.maybe Json.Decode.string)


decodeProductProductImagesIngredients_frSizes100 : Json.Decode.Decoder ProductProductImagesIngredients_frSizes100
decodeProductProductImagesIngredients_frSizes100 =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients_frSizes100
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesIngredients_frSizes200 : Json.Decode.Decoder ProductProductImagesIngredients_frSizes200
decodeProductProductImagesIngredients_frSizes200 =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients_frSizes200
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesIngredients_frSizes400 : Json.Decode.Decoder ProductProductImagesIngredients_frSizes400
decodeProductProductImagesIngredients_frSizes400 =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients_frSizes400
        |> Json.Decode.Pipeline.required "w" Json.Decode.int
        |> Json.Decode.Pipeline.required "h" Json.Decode.int


decodeProductProductImagesIngredients_frSizesFull : Json.Decode.Decoder ProductProductImagesIngredients_frSizesFull
decodeProductProductImagesIngredients_frSizesFull =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients_frSizesFull
        |> Json.Decode.Pipeline.required "h" Json.Decode.int
        |> Json.Decode.Pipeline.required "w" Json.Decode.int


decodeProductProductImagesIngredients_frSizes : Json.Decode.Decoder ProductProductImagesIngredients_frSizes
decodeProductProductImagesIngredients_frSizes =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients_frSizes
        |> Json.Decode.Pipeline.required "100" decodeProductProductImagesIngredients_frSizes100
        |> Json.Decode.Pipeline.required "200" decodeProductProductImagesIngredients_frSizes200
        |> Json.Decode.Pipeline.required "400" decodeProductProductImagesIngredients_frSizes400
        |> Json.Decode.Pipeline.required "full" decodeProductProductImagesIngredients_frSizesFull


decodeProductProductImagesIngredients_fr : Json.Decode.Decoder ProductProductImagesIngredients_fr
decodeProductProductImagesIngredients_fr =
    Json.Decode.Pipeline.decode ProductProductImagesIngredients_fr
        |> Json.Decode.Pipeline.required "y2" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "geometry" Json.Decode.string
        |> Json.Decode.Pipeline.required "angle" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "x2" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "y1" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "normalize" Json.Decode.string
        |> Json.Decode.Pipeline.required "x1" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "white_magic" Json.Decode.string
        |> Json.Decode.Pipeline.required "rev" Json.Decode.string
        |> Json.Decode.Pipeline.required "sizes" decodeProductProductImagesIngredients_frSizes


decodeProductProductImages : Json.Decode.Decoder ProductProductImages
decodeProductProductImages =
    Json.Decode.Pipeline.decode ProductProductImages
        |> Json.Decode.Pipeline.required "1" decodeProductProductImages1
        |> Json.Decode.Pipeline.required "2" decodeProductProductImages2
        |> Json.Decode.Pipeline.required "3" decodeProductProductImages3
        |> Json.Decode.Pipeline.required "4" decodeProductProductImages4
        |> Json.Decode.Pipeline.required "5" decodeProductProductImages5
        |> Json.Decode.Pipeline.required "6" decodeProductProductImages6
        |> Json.Decode.Pipeline.required "7" decodeProductProductImages7
        |> Json.Decode.Pipeline.required "8" decodeProductProductImages8
        |> Json.Decode.Pipeline.required "9" decodeProductProductImages9
        |> Json.Decode.Pipeline.required "10" decodeProductProductImages10
        |> Json.Decode.Pipeline.required "11" decodeProductProductImages11
        |> Json.Decode.Pipeline.required "12" decodeProductProductImages12
        |> Json.Decode.Pipeline.required "13" decodeProductProductImages13
        |> Json.Decode.Pipeline.required "14" decodeProductProductImages14
        |> Json.Decode.Pipeline.required "nutrition" decodeProductProductImagesNutrition
        |> Json.Decode.Pipeline.required "nutrition_fr" decodeProductProductImagesNutrition_fr
        |> Json.Decode.Pipeline.required "front" decodeProductProductImagesFront
        |> Json.Decode.Pipeline.required "front_fr" decodeProductProductImagesFront_fr
        |> Json.Decode.Pipeline.required "ingredients" decodeProductProductImagesIngredients
        |> Json.Decode.Pipeline.required "ingredients_fr" decodeProductProductImagesIngredients_fr


decodeProductProduct : Json.Decode.Decoder ProductProduct
decodeProductProduct =
    Json.Decode.Pipeline.decode ProductProduct
        |> Json.Decode.Pipeline.required "purchase_places_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_ids_debug" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "cities_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "states" Json.Decode.string
        |> Json.Decode.Pipeline.required "labels_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_n" Json.Decode.string
        |> Json.Decode.Pipeline.required "minerals_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_text_fr_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "informers_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "image_small_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "pnns_groups_2" Json.Decode.string
        |> Json.Decode.Pipeline.required "amino_acids_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "id" Json.Decode.string
        |> Json.Decode.Pipeline.required "generic_name_fr_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "labels_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "_id" Json.Decode.string
        |> Json.Decode.Pipeline.required "allergens" Json.Decode.string
        |> Json.Decode.Pipeline.required "completed_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "fruits-vegetables-nuts_100g_estimate" Json.Decode.int
        |> Json.Decode.Pipeline.required "ingredients_text_fr" Json.Decode.string
        |> Json.Decode.Pipeline.required "image_ingredients_thumb_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "unknown_ingredients_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "additives_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "categories_prev_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "pnns_groups_1" Json.Decode.string
        |> Json.Decode.Pipeline.required "nutrition_data_per" Json.Decode.string
        |> Json.Decode.Pipeline.required "nutrition_data_prepared_per" Json.Decode.string
        |> Json.Decode.Pipeline.required "additives_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "entry_dates_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "additives_prev_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "ingredients_text_with_allergens" Json.Decode.string
        |> Json.Decode.Pipeline.required "traces_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "countries_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "last_modified_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "product_quantity" Json.Decode.int
        |> Json.Decode.Pipeline.required "brands_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "product_name" Json.Decode.string
        |> Json.Decode.Pipeline.required "labels_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "nucleotides_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "expiration_date_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "countries_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "link_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "manufacturing_places" Json.Decode.string
        |> Json.Decode.Pipeline.required "max_imgid" Json.Decode.string
        |> Json.Decode.Pipeline.required "image_thumb_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "pnns_groups_1_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "nutrition_score_debug" Json.Decode.string
        |> Json.Decode.Pipeline.required "countries" Json.Decode.string
        |> Json.Decode.Pipeline.required "unique_scans_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "ingredients_n_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "no_nutrition_data" Json.Decode.string
        |> Json.Decode.Pipeline.required "serving_size_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "languages_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "purchase_places" Json.Decode.string
        |> Json.Decode.Pipeline.required "additives" Json.Decode.string
        |> Json.Decode.Pipeline.required "languages_codes" decodeProductProductLanguages_codes
        |> Json.Decode.Pipeline.required "additives_old_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "traces" Json.Decode.string
        |> Json.Decode.Pipeline.required "last_image_dates_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "nutriments" decodeProductProductNutriments
        |> Json.Decode.Pipeline.required "ingredients_from_palm_oil_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "misc_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "categories_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "languages_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "image_nutrition_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "codes_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "nutrient_levels_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "generic_name_fr" Json.Decode.string
        |> Json.Decode.Pipeline.required "additives_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "selected_images" decodeProductProductSelected_images
        |> Json.Decode.Pipeline.required "last_image_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "debug_param_sorted_langs" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "additives_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_from_or_that_may_be_from_palm_oil_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "serving_size" Json.Decode.string
        |> Json.Decode.Pipeline.required "complete" Json.Decode.int
        |> Json.Decode.Pipeline.required "lang" Json.Decode.string
        |> Json.Decode.Pipeline.required "labels_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "created_t" Json.Decode.int
        |> Json.Decode.Pipeline.required "image_nutrition_small_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "brands" Json.Decode.string
        |> Json.Decode.Pipeline.required "packaging" Json.Decode.string
        |> Json.Decode.Pipeline.required "ingredients_that_may_be_from_palm_oil_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "image_ingredients_small_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "traces_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "nutrition_data_per_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "unknown_nutrients_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "emb_codes_orig" Json.Decode.string
        |> Json.Decode.Pipeline.required "additives_prev_original_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "allergens_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "rev" Json.Decode.int
        |> Json.Decode.Pipeline.required "nucleotides_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "interface_version_created" Json.Decode.string
        |> Json.Decode.Pipeline.required "creator" Json.Decode.string
        |> Json.Decode.Pipeline.required "categories_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "packaging_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "categories_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "scans_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "labels_prev_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "last_edit_dates_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "countries_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "_keywords" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_text_with_allergens_fr" Json.Decode.string
        |> Json.Decode.Pipeline.required "minerals_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "checkers_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "categories_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "new_additives_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "purchase_places_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "images" decodeProductProductImages
        |> Json.Decode.Pipeline.required "interface_version_modified" Json.Decode.string
        |> Json.Decode.Pipeline.required "ingredients_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "vitamins_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "nutrition_grades_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "quality_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "amino_acids_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "manufacturing_places_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "product_name_fr" Json.Decode.string
        |> Json.Decode.Pipeline.required "stores_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "update_key" Json.Decode.string
        |> Json.Decode.Pipeline.required "image_ingredients_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "correctors_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "quantity_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "serving_quantity" Json.Decode.int
        |> Json.Decode.Pipeline.required "origins_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "brands_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "code" Json.Decode.string
        |> Json.Decode.Pipeline.required "last_modified_by" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "quantity" Json.Decode.string
        |> Json.Decode.Pipeline.required "sortkey" Json.Decode.int
        |> Json.Decode.Pipeline.required "editors_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "lang_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "traces_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "generic_name" Json.Decode.string
        |> Json.Decode.Pipeline.required "pnns_groups_2_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "categories" Json.Decode.string
        |> Json.Decode.Pipeline.required "product_name_fr_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_from_palm_oil_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "lc" Json.Decode.string
        |> Json.Decode.Pipeline.required "image_front_thumb_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "emb_codes" Json.Decode.string
        |> Json.Decode.Pipeline.required "expiration_date" Json.Decode.string
        |> Json.Decode.Pipeline.required "editors" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "origins_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "image_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "additives_prev" Json.Decode.string
        |> Json.Decode.Pipeline.required "last_editor" (Json.Decode.maybe Json.Decode.string)
        |> Json.Decode.Pipeline.required "photographers_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "origins" Json.Decode.string
        |> Json.Decode.Pipeline.required "ingredients_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "emb_codes_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "stores_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "image_front_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "allergens_hierarchy" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "packaging_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "product_name_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "additives_old_n" Json.Decode.int
        |> Json.Decode.Pipeline.required "manufacturing_places_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "emb_codes_20141016" Json.Decode.string
        |> Json.Decode.Pipeline.required "link" Json.Decode.string
        |> Json.Decode.Pipeline.required "ingredients_text" Json.Decode.string
        |> Json.Decode.Pipeline.required "vitamins_prev_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "image_front_small_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "emb_codes_debug_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "states_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_that_may_be_from_palm_oil_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "stores" Json.Decode.string
        |> Json.Decode.Pipeline.required "image_nutrition_thumb_url" Json.Decode.string
        |> Json.Decode.Pipeline.required "labels" Json.Decode.string
        |> Json.Decode.Pipeline.required "additives_original_tags" (Json.Decode.list Json.Decode.string)
        |> Json.Decode.Pipeline.required "ingredients_text_debug" Json.Decode.string
        |> Json.Decode.Pipeline.required "states_hierarchy" (Json.Decode.list Json.Decode.string)
