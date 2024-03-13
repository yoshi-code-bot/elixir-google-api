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

defmodule GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig do
  @moduledoc """
  Settings that control what YouTube related inventories the YouTube and Partners line item will target.

  ## Attributes

  *   `includeGoogleTv` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to target inventory in video apps available with Google TV.
  *   `includeYoutube` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to target inventory on YouTube. This includes both search, channels and videos.
  *   `includeYoutubeVideoPartners` (*type:* `boolean()`, *default:* `nil`) - Whether to target inventory on a collection of partner sites and apps that follow the same brand safety standards as YouTube.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :includeGoogleTv => boolean() | nil,
          :includeYoutube => boolean() | nil,
          :includeYoutubeVideoPartners => boolean() | nil
        }

  field(:includeGoogleTv)
  field(:includeYoutube)
  field(:includeYoutubeVideoPartners)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end