module Pages.<%= module %>.Update
    exposing
        ( onArrival
        , update
        )

import Messages as RootMsg
import Model as RootModel
import Pages.<%= module %>.Messages exposing (Msg(..))
import Pages.<%= module %>.Model exposing (Model)
import RemoteData exposing (RemoteData(..))
import Routing.Route as Route exposing (VerificationStep)
import Routing.Router exposing (VerificationResult(..))
import Types
    exposing
        ( AppConfigurations
        , SessionInfo
        )


onArrival : AppConfigurations -> SessionInfo -> VerificationStep RootModel.Model RootMsg.Msg
onArrival configs sessionInfo { model } =
    Allowed ((model , Cmd.batch []))


update : AppConfigurations -> SessionInfo -> Msg -> Model -> ( Model, Cmd RootMsg.Msg )
update configs sessionInfo msg model =
    case msg of
        _ ->
            (model , Cmd.none)