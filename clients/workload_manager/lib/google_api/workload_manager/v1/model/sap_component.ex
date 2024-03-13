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

defmodule GoogleApi.WorkloadManager.V1.Model.SapComponent do
  @moduledoc """
  The component of sap workload

  ## Attributes

  *   `haHosts` (*type:* `list(String.t)`, *default:* `nil`) - A list of host URIs that are part of the HA configuration if present. An empty list indicates the component is not configured for HA.
  *   `resources` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.CloudResource.t)`, *default:* `nil`) - Output only. resources in the component
  *   `sid` (*type:* `String.t`, *default:* `nil`) - Output only. sid is the sap component identificator
  *   `topologyType` (*type:* `String.t`, *default:* `nil`) - The detected topology of the component.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :haHosts => list(String.t()) | nil,
          :resources => list(GoogleApi.WorkloadManager.V1.Model.CloudResource.t()) | nil,
          :sid => String.t() | nil,
          :topologyType => String.t() | nil
        }

  field(:haHosts, type: :list)
  field(:resources, as: GoogleApi.WorkloadManager.V1.Model.CloudResource, type: :list)
  field(:sid)
  field(:topologyType)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.SapComponent do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.SapComponent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.SapComponent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end