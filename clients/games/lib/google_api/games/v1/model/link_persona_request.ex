# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Games.V1.Model.LinkPersonaRequest do
  @moduledoc """
  Request to link an in-game account with a PGS principal (encoded in the session id).

  ## Attributes

  *   `cardinalityConstraint` (*type:* `String.t`, *default:* `nil`) - Required. Cardinality constraint to observe when linking a persona to a player in the scope of a game.
  *   `conflictingLinksResolutionPolicy` (*type:* `String.t`, *default:* `nil`) - Required. Resolution policy to apply when the linking of a persona to a player would result in violating the specified cardinality constraint.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Input only. Optional expiration time.
  *   `persona` (*type:* `String.t`, *default:* `nil`) - Required. Stable identifier of the in-game account. Please refrain from re-using the same persona for different games.
  *   `sessionId` (*type:* `String.t`, *default:* `nil`) - Required. Opaque server-generated string that encodes all the necessary information to identify the PGS player / Google user and application.
  *   `token` (*type:* `String.t`, *default:* `nil`) - Required. Value of the token to create. Opaque to Play Games and assumed to be non-stable (encrypted with key rotation).
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. Optional time-to-live.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cardinalityConstraint => String.t() | nil,
          :conflictingLinksResolutionPolicy => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :persona => String.t() | nil,
          :sessionId => String.t() | nil,
          :token => String.t() | nil,
          :ttl => String.t() | nil
        }

  field(:cardinalityConstraint)
  field(:conflictingLinksResolutionPolicy)
  field(:expireTime, as: DateTime)
  field(:persona)
  field(:sessionId)
  field(:token)
  field(:ttl)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.LinkPersonaRequest do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.LinkPersonaRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.LinkPersonaRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end