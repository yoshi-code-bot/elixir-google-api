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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiOnDeviceAssistantCapabilities do
  @moduledoc """
  Definitions of on-device assistant capabilities.

  ## Attributes

  *   `isLocalNetworkArbitrationSupported` (*type:* `boolean()`, *default:* `nil`) - Capabilities related to local network arbitration (go/local-network-arbitration). Indicates if the device is capable of being a host device in the LAN whiling doing local network arbitration.
  *   `isOnDeviceArbitrationSupported` (*type:* `boolean()`, *default:* `nil`) - Capabilities related to on-device arbitration(go/arbitration-on-device).
  *   `isOnDeviceAssistantSupported` (*type:* `boolean()`, *default:* `nil`) - Indicates if on-device assistant is enabled on this device. Example usecases: NGA (go/nga) or Marble (go/marble).
  *   `isOnDeviceUnderstandingSupported` (*type:* `boolean()`, *default:* `nil`) - This may be used by NGA. E.g. if understanding happens on device, we can have more aggressive logic when fulfilling some features on the server side, like teleport.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isLocalNetworkArbitrationSupported => boolean() | nil,
          :isOnDeviceArbitrationSupported => boolean() | nil,
          :isOnDeviceAssistantSupported => boolean() | nil,
          :isOnDeviceUnderstandingSupported => boolean() | nil
        }

  field(:isLocalNetworkArbitrationSupported)
  field(:isOnDeviceArbitrationSupported)
  field(:isOnDeviceAssistantSupported)
  field(:isOnDeviceUnderstandingSupported)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiOnDeviceAssistantCapabilities do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiOnDeviceAssistantCapabilities.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiOnDeviceAssistantCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end