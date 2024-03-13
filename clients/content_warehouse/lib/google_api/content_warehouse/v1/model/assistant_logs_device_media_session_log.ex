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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceMediaSessionLog do
  @moduledoc """
  Log about the media session on a device.

  ## Attributes

  *   `deviceId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId.t`, *default:* `nil`) - 
  *   `mediaSessionType` (*type:* `String.t`, *default:* `nil`) - 
  *   `mediaType` (*type:* `String.t`, *default:* `nil`) - The type of the media session. If provider does not report this field, we ## compute it by mapping provider type to media type. Here is the mapping: |ProviderType |MediaItemMetadata.Type| |-------------------------------------- |MUSIC |TRACK | |VIDEO |VIDEO | |LIVE_TV |TV_CHANNEL | |AUDIOBOOK |AUDIO_BOOK | |PODCAST |PODCAST_EPISODE | ## |LIVE_STREAMING|VIDEO | 
  *   `playbackState` (*type:* `String.t`, *default:* `nil`) - The playback states of the session.
  *   `providerMid` (*type:* `String.t`, *default:* `nil`) - The KG mid of the media provider.
  *   `supportedTransportControl` (*type:* `list(String.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId.t() | nil,
          :mediaSessionType => String.t() | nil,
          :mediaType => String.t() | nil,
          :playbackState => String.t() | nil,
          :providerMid => String.t() | nil,
          :supportedTransportControl => list(String.t()) | nil
        }

  field(:deviceId, as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiCoreTypesDeviceId)
  field(:mediaSessionType)
  field(:mediaType)
  field(:playbackState)
  field(:providerMid)
  field(:supportedTransportControl, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceMediaSessionLog do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceMediaSessionLog.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantLogsDeviceMediaSessionLog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
