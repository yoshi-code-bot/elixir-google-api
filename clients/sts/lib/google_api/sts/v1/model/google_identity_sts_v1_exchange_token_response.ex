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

defmodule GoogleApi.STS.V1.Model.GoogleIdentityStsV1ExchangeTokenResponse do
  @moduledoc """
  Response message for ExchangeToken.

  ## Attributes

  *   `access_boundary_session_key` (*type:* `String.t`, *default:* `nil`) - The access boundary session key. This key is used along with the access boundary intermediate token to generate Credential Access Boundary tokens at client side. This field is absent when the `requested_token_type` from the request is not `urn:ietf:params:oauth:token-type:access_boundary_intermediate_token`.
  *   `access_token` (*type:* `String.t`, *default:* `nil`) - An OAuth 2.0 security token, issued by Google, in response to the token exchange request. Tokens can vary in size, depending in part on the size of mapped claims, up to a maximum of 12288 bytes (12 KB). Google reserves the right to change the token size and the maximum length at any time.
  *   `expires_in` (*type:* `integer()`, *default:* `nil`) - The amount of time, in seconds, between the time when the access token was issued and the time when the access token will expire. This field is absent when the `subject_token` in the request is a Google-issued, short-lived access token. In this case, the access token has the same expiration time as the `subject_token`.
  *   `issued_token_type` (*type:* `String.t`, *default:* `nil`) - The token type. Always matches the value of `requested_token_type` from the request.
  *   `token_type` (*type:* `String.t`, *default:* `nil`) - The type of access token. Always has the value `Bearer`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :access_boundary_session_key => String.t() | nil,
          :access_token => String.t() | nil,
          :expires_in => integer() | nil,
          :issued_token_type => String.t() | nil,
          :token_type => String.t() | nil
        }

  field(:access_boundary_session_key)
  field(:access_token)
  field(:expires_in)
  field(:issued_token_type)
  field(:token_type)
end

defimpl Poison.Decoder, for: GoogleApi.STS.V1.Model.GoogleIdentityStsV1ExchangeTokenResponse do
  def decode(value, options) do
    GoogleApi.STS.V1.Model.GoogleIdentityStsV1ExchangeTokenResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.STS.V1.Model.GoogleIdentityStsV1ExchangeTokenResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
