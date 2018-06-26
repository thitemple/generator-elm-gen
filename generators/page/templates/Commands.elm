module Pages.<%= module %>.Commands exposing ()

import Api.Decoders as Decoders
import Api.Encoders as Encoders
import Api.Http as Api exposing (EndPoint(..))
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
    