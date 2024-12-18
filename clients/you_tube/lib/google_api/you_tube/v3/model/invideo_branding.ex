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

defmodule GoogleApi.YouTube.V3.Model.InvideoBranding do
  @moduledoc """
  Describes an invideo branding.

  ## Attributes

  *   `imageBytes` (*type:* `String.t`, *default:* `nil`) - The bytes the uploaded image. Only used in api to youtube communication.
  *   `imageUrl` (*type:* `String.t`, *default:* `nil`) - The url of the uploaded image. Only used in apiary to api communication.
  *   `position` (*type:* `GoogleApi.YouTube.V3.Model.InvideoPosition.t`, *default:* `nil`) - The spatial position within the video where the branding watermark will be displayed.
  *   `targetChannelId` (*type:* `String.t`, *default:* `nil`) - The channel to which this branding links. If not present it defaults to the current channel.
  *   `timing` (*type:* `GoogleApi.YouTube.V3.Model.InvideoTiming.t`, *default:* `nil`) - The temporal position within the video where watermark will be displayed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageBytes => String.t() | nil,
          :imageUrl => String.t() | nil,
          :position => GoogleApi.YouTube.V3.Model.InvideoPosition.t() | nil,
          :targetChannelId => String.t() | nil,
          :timing => GoogleApi.YouTube.V3.Model.InvideoTiming.t() | nil
        }

  field(:imageBytes)
  field(:imageUrl)
  field(:position, as: GoogleApi.YouTube.V3.Model.InvideoPosition)
  field(:targetChannelId)
  field(:timing, as: GoogleApi.YouTube.V3.Model.InvideoTiming)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.InvideoBranding do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.InvideoBranding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.InvideoBranding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
