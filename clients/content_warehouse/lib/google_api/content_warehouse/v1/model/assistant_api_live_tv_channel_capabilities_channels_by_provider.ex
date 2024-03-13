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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesChannelsByProvider do
  @moduledoc """


  ## Attributes

  *   `channels` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesLiveTvChannel.t)`, *default:* `nil`) - A list of channels provided by this input. Keep the performance impact in mind when the number/size of the channels is large. When there are too many channels, consider stripping out some data.
  *   `inputId` (*type:* `String.t`, *default:* `nil`) - An identifier to identify the input source. For example for TIF based channels, this will be the TIF input ID to differentiate different tuner apps. See https://source.android.com/devices/tv
  *   `providerType` (*type:* `String.t`, *default:* `nil`) - Type of provider who provides this channel input.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channels =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesLiveTvChannel.t()
            )
            | nil,
          :inputId => String.t() | nil,
          :providerType => String.t() | nil
        }

  field(:channels,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesLiveTvChannel,
    type: :list
  )

  field(:inputId)
  field(:providerType)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesChannelsByProvider do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesChannelsByProvider.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiLiveTvChannelCapabilitiesChannelsByProvider do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end