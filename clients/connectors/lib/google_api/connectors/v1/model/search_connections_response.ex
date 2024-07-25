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

defmodule GoogleApi.Connectors.V1.Model.SearchConnectionsResponse do
  @moduledoc """
  Response message for Connectors.SearchConnections.

  ## Attributes

  *   `connections` (*type:* `list(GoogleApi.Connectors.V1.Model.SearchConnectionInstance.t)`, *default:* `nil`) - A list of connectors.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Optional. page_token
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connections => list(GoogleApi.Connectors.V1.Model.SearchConnectionInstance.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:connections, as: GoogleApi.Connectors.V1.Model.SearchConnectionInstance, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.SearchConnectionsResponse do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.SearchConnectionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.SearchConnectionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
