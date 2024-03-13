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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudCapability do
  @moduledoc """
  States the cloud capabilities of the device, i.e. the endpoint(s) to use for cloud execution of Actions or Registration.

  ## Attributes

  *   `cloudEndpoints` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudEndpoint.t)`, *default:* `nil`) - The list of CloudEndpoints supported by this Device Model. Note that each should have a unique |name|. If any cloud endpoints are provided here, then the first one in the list will be used by default for all Cloud Execution. An Intent may override the default by providing an |execution_config|.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudEndpoints =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudEndpoint.t()
            )
            | nil
        }

  field(:cloudEndpoints,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudEndpoint,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudCapability do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudCapability.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoCloudCapability do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
