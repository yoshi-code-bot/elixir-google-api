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

defmodule GoogleApi.Container.V1.Model.GetJSONWebKeysResponse do
  @moduledoc """
  GetJSONWebKeysResponse is a valid JSON Web Key Set as specified in rfc 7517

  ## Attributes

  *   `cacheHeader` (*type:* `GoogleApi.Container.V1.Model.HttpCacheControlResponseHeader.t`, *default:* `nil`) - For HTTP requests, this field is automatically extracted into the Cache-Control HTTP header.
  *   `keys` (*type:* `list(GoogleApi.Container.V1.Model.Jwk.t)`, *default:* `nil`) - The public component of the keys used by the cluster to sign token requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cacheHeader => GoogleApi.Container.V1.Model.HttpCacheControlResponseHeader.t() | nil,
          :keys => list(GoogleApi.Container.V1.Model.Jwk.t()) | nil
        }

  field(:cacheHeader, as: GoogleApi.Container.V1.Model.HttpCacheControlResponseHeader)
  field(:keys, as: GoogleApi.Container.V1.Model.Jwk, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.GetJSONWebKeysResponse do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.GetJSONWebKeysResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.GetJSONWebKeysResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
