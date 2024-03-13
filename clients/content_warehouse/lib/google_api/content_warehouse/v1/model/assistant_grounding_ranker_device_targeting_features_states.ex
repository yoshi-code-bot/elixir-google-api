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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerDeviceTargetingFeaturesStates do
  @moduledoc """
  The states of the device. They are dynamic and may change based on the current context. Next ID: 15

  ## Attributes

  *   `distance` (*type:* `String.t`, *default:* `nil`) - The distance of the device relative to others that hear the user's OKG.
  *   `hasBufferingMediaSession` (*type:* `boolean()`, *default:* `nil`) - Indicates that the device is running a media session that is currently buffering.
  *   `hasPausedMediaSession` (*type:* `boolean()`, *default:* `nil`) - Indicates that the device is running a media session that is currently paused.
  *   `hasPlayingMediaSession` (*type:* `boolean()`, *default:* `nil`) - Indicates that the device is running a media session that is currently playing.
  *   `inSameRoomAsHearingDevice` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not the device is in the same room as any hearing devices. Does not consider the device itself or the local device as a hearing device. If no valid hearing devices, this field is not set.
  *   `inSameRoomAsLocalDevice` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not the device is in the same room as the local device. If the device is the local device, this field is not set.
  *   `inSameStructureAsHearingDevice` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not the device is in the same structure as any hearing devices. Does not consider the device itself or the local device as a hearing device. If no valid hearing devices, this field is not set.
  *   `inSameStructureAsLocalDevice` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not the device is in the same structure as the local device. If the device is the local device, this field is not set.
  *   `isDocked` (*type:* `boolean()`, *default:* `nil`) - Indicate whether the device is docked on a base.
  *   `isLocal` (*type:* `boolean()`, *default:* `nil`) - Whether the device is a local device, i.e. the device that heard OKG from a user and is processed by an assistant pipeline. If multiple devices heard OKG (MDA case), each hearing device would be considered a local device in its own assistant pipeline. Example: A user says "OKG, play music on TV" to Google Home, and music is played on the TV. Google home is considered a local device, while TV is considered a remote device. Timestamp of when the device was last used. Should correspond to when the AssistantRequestParams (in ASSISTANT_SNAPSHOT corpus) were last written for this device.
  *   `isLocked` (*type:* `boolean()`, *default:* `nil`) - Indicate whether the device is locked.
  *   `isTethered` (*type:* `boolean()`, *default:* `nil`) - Indicate whether the device is tethered to another device.
  *   `mediaFocusStateFromHearingDevice` (*type:* `String.t`, *default:* `nil`) - Indicates the state of media focus from a separate non-local hearing device.
  *   `mediaFocusStateFromLocalDevice` (*type:* `String.t`, *default:* `nil`) - Indicates the state of media focus from a separate local device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distance => String.t() | nil,
          :hasBufferingMediaSession => boolean() | nil,
          :hasPausedMediaSession => boolean() | nil,
          :hasPlayingMediaSession => boolean() | nil,
          :inSameRoomAsHearingDevice => boolean() | nil,
          :inSameRoomAsLocalDevice => boolean() | nil,
          :inSameStructureAsHearingDevice => boolean() | nil,
          :inSameStructureAsLocalDevice => boolean() | nil,
          :isDocked => boolean() | nil,
          :isLocal => boolean() | nil,
          :isLocked => boolean() | nil,
          :isTethered => boolean() | nil,
          :mediaFocusStateFromHearingDevice => String.t() | nil,
          :mediaFocusStateFromLocalDevice => String.t() | nil
        }

  field(:distance)
  field(:hasBufferingMediaSession)
  field(:hasPausedMediaSession)
  field(:hasPlayingMediaSession)
  field(:inSameRoomAsHearingDevice)
  field(:inSameRoomAsLocalDevice)
  field(:inSameStructureAsHearingDevice)
  field(:inSameStructureAsLocalDevice)
  field(:isDocked)
  field(:isLocal)
  field(:isLocked)
  field(:isTethered)
  field(:mediaFocusStateFromHearingDevice)
  field(:mediaFocusStateFromLocalDevice)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerDeviceTargetingFeaturesStates do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerDeviceTargetingFeaturesStates.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantGroundingRankerDeviceTargetingFeaturesStates do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end