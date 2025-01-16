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

defmodule GoogleApi.Compute.V1.Model.NetworkEndpointWithHealthStatus do
  @moduledoc """


  ## Attributes

  *   `healths` (*type:* `list(GoogleApi.Compute.V1.Model.HealthStatusForNetworkEndpoint.t)`, *default:* `nil`) - [Output only] The health status of network endpoint. Optional. Displayed only if the network endpoint has centralized health checking configured.
  *   `networkEndpoint` (*type:* `GoogleApi.Compute.V1.Model.NetworkEndpoint.t`, *default:* `nil`) - [Output only] The network endpoint.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :healths => list(GoogleApi.Compute.V1.Model.HealthStatusForNetworkEndpoint.t()) | nil,
          :networkEndpoint => GoogleApi.Compute.V1.Model.NetworkEndpoint.t() | nil
        }

  field(:healths, as: GoogleApi.Compute.V1.Model.HealthStatusForNetworkEndpoint, type: :list)
  field(:networkEndpoint, as: GoogleApi.Compute.V1.Model.NetworkEndpoint)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointWithHealthStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NetworkEndpointWithHealthStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NetworkEndpointWithHealthStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
