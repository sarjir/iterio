import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Html.Attributes exposing (..)

main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL

type alias Model = Int

init : Model
init = 
  0


-- UPDATE

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1
    
    Decrement ->
      model - 1 


-- VIEW

speachBubble : String -> String -> Html Msg
speachBubble speach side = 
  div [ style "background-color" "red"
      , style "align-self" side
      , style "margin-bottom" "11px"
      ]
      [
        text speach
      ]

view : Model -> Html Msg
view model =
  div [ style "display" "flex"
      , style "justify-content" "space-between"
      , style "flex-direction" "column"
      ]
      [ speachBubble "Hello World" "flex-start"
      , speachBubble "Hello world again" "flex-end"
      ]