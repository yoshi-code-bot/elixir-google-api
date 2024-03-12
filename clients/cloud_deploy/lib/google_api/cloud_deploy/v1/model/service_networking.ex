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

defmodule GoogleApi.CloudDeploy.V1.Model.ServiceNetworking do
  @moduledoc """
  Information about the Kubernetes Service networking configuration.

  ## Attributes

  *   `deployment` (*type:* `String.t`, *default:* `nil`) - Required. Name of the Kubernetes Deployment whose traffic is managed by the specified Service.
  *   `disablePodOverprovisioning` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to disable Pod overprovisioning. If Pod overprovisioning is disabled then Cloud Deploy will limit the number of total Pods used for the deployment strategy to the number of Pods the Deployment has on the cluster.
  *   `service` (*type:* `String.t`, *default:* `nil`) - Required. Name of the Kubernetes Service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployment => String.t() | nil,
          :disablePodOverprovisioning => boolean() | nil,
          :service => String.t() | nil
        }

  field(:deployment)
  field(:disablePodOverprovisioning)
  field(:service)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.ServiceNetworking do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.ServiceNetworking.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.ServiceNetworking do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end