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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaJwt do
  @moduledoc """
  Represents JSON web token(JWT), which is a compact, URL-safe means of representing claims to be transferred between two parties, enabling the claims to be digitally signed or integrity protected.

  ## Attributes

  *   `jwt` (*type:* `String.t`, *default:* `nil`) - The token calculated by the header, payload and signature.
  *   `jwtHeader` (*type:* `String.t`, *default:* `nil`) - Identifies which algorithm is used to generate the signature.
  *   `jwtPayload` (*type:* `String.t`, *default:* `nil`) - Contains a set of claims. The JWT specification defines seven Registered Claim Names which are the standard fields commonly included in tokens. Custom claims are usually also included, depending on the purpose of the token.
  *   `secret` (*type:* `String.t`, *default:* `nil`) - User's pre-shared secret to sign the token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jwt => String.t() | nil,
          :jwtHeader => String.t() | nil,
          :jwtPayload => String.t() | nil,
          :secret => String.t() | nil
        }

  field(:jwt)
  field(:jwtHeader)
  field(:jwtPayload)
  field(:secret)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaJwt do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaJwt.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaJwt do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
