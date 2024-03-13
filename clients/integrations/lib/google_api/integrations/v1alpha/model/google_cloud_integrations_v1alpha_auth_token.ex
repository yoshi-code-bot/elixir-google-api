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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAuthToken do
  @moduledoc """
  The credentials to authenticate a user agent with a server that is put in HTTP Authorization request header.

  ## Attributes

  *   `token` (*type:* `String.t`, *default:* `nil`) - The token for the auth type.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Authentication type, e.g. "Basic", "Bearer", etc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :token => String.t() | nil,
          :type => String.t() | nil
        }

  field(:token)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAuthToken do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAuthToken.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaAuthToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end