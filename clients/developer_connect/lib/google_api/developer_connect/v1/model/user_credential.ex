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

defmodule GoogleApi.DeveloperConnect.V1.Model.UserCredential do
  @moduledoc """
  Represents a personal access token that authorized the Connection, and associated metadata.

  ## Attributes

  *   `userTokenSecretVersion` (*type:* `String.t`, *default:* `nil`) - Required. A SecretManager resource containing the user token that authorizes the Developer Connect connection. Format: `projects/*/secrets/*/versions/*`.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Output only. The username associated with this token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :userTokenSecretVersion => String.t() | nil,
          :username => String.t() | nil
        }

  field(:userTokenSecretVersion)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.UserCredential do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.UserCredential.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.UserCredential do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
