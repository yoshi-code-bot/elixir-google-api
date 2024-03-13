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

defmodule GoogleApi.Connectors.V2.Model.AccessCredentials do
  @moduledoc """
  AccessCredentials includes the OAuth access token, and the other fields returned along with it.

  ## Attributes

  *   `accessToken` (*type:* `String.t`, *default:* `nil`) - OAuth access token.
  *   `expiresIn` (*type:* `String.t`, *default:* `nil`) - Duration till the access token expires.
  *   `refreshToken` (*type:* `String.t`, *default:* `nil`) - OAuth refresh token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessToken => String.t() | nil,
          :expiresIn => String.t() | nil,
          :refreshToken => String.t() | nil
        }

  field(:accessToken)
  field(:expiresIn)
  field(:refreshToken)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V2.Model.AccessCredentials do
  def decode(value, options) do
    GoogleApi.Connectors.V2.Model.AccessCredentials.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V2.Model.AccessCredentials do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end