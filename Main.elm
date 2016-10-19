module Main exposing (..)

import Html exposing (Html, text)
import Html.App


type alias MyFlags =
    { currentUrl : String
    }


type alias Model =
    String


type Msg
    = NoOp


main : Program MyFlags
main =
    Html.App.programWithFlags
        { init = init
        , update = update
        , subscriptions = \_ -> Sub.none
        , view = view
        }


init : MyFlags -> ( Model, Cmd Msg )
init { currentUrl } =
    ( currentUrl, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Html Msg
view model =
    text <| "Your current url is " ++ model
