module Request.Helpers exposing (errorHttp2String, server)

import Http exposing (Error, Response)


server : String
server =
    --"https://us-central1-quiz2018bow.cloudfunctions.net/elmServerless/"
    "http://localhost:5000/quiz2018bow/us-central1/elmServerless/"


errorHttp2String : Http.Error -> String
errorHttp2String error =
    case error of
        Http.BadUrl badUrl ->
            "Bad Url : " ++ badUrl

        Http.Timeout ->
            "Timeout"

        Http.NetworkError ->
            "Network Error"

        Http.BadStatus response ->
            "Bad Status : " ++ toString response.status.code

        Http.BadPayload msg response ->
            -- TODO à compléter
            "Bad Payload : " ++ msg
