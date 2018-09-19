module Pages.<%= module %>.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class)
import Pages.<%= module %>.Messages exposing (Msg(..))
import Pages.<%= module %>.Model exposing (Model)
import Routing.Route as Route


view : Model -> Html Msg
view model =
    div []
        [ h4 [] [ text "<%= module %>" ] ]