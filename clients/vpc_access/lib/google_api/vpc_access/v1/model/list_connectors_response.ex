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

defmodule GoogleApi.VPCAccess.V1.Model.ListConnectorsResponse do
  @moduledoc """
  Response for listing Serverless VPC Access connectors.

  ## Attributes

  *   `connectors` (*type:* `list(GoogleApi.VPCAccess.V1.Model.Connector.t)`, *default:* `nil`) - List of Serverless VPC Access connectors.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectors => list(GoogleApi.VPCAccess.V1.Model.Connector.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:connectors, as: GoogleApi.VPCAccess.V1.Model.Connector, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.VPCAccess.V1.Model.ListConnectorsResponse do
  def decode(value, options) do
    GoogleApi.VPCAccess.V1.Model.ListConnectorsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VPCAccess.V1.Model.ListConnectorsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end