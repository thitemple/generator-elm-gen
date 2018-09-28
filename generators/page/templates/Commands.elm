module Pages.<%= module %>.Commands exposing (someCmd)

import Api.Decoders as Decoders
import Api.Encoders as Encoders
import Api.EndPoints as EndPoints exposing (EndPoint(..))
import Api.Http as Api
import Http
import Messages as RootMsg
import Pages.<%= module %>.Messages exposing (Msg(..))
import Types
    exposing
        ( SessionInfo
        )


someCmd : SessionInfo -> Cmd RootMsg.Msg
someCmd sessionInfo =
    Cmd.none
    