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

defmodule GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersSettings do
  @moduledoc """
  Settings for YouTube and Partners line items.

  ## Attributes

  *   `contentCategory` (*type:* `String.t`, *default:* `nil`) - The kind of content on which the YouTube and Partners ads will be shown.
  *   `effectiveContentCategory` (*type:* `String.t`, *default:* `nil`) - Output only. The content category which takes effect when serving the line item. When content category is set in both line item and advertiser, the stricter one will take effect when serving the line item.
  *   `inventorySourceSettings` (*type:* `GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig.t`, *default:* `nil`) - Settings that control what YouTube and Partners inventories the line item will target.
  *   `leadFormId` (*type:* `String.t`, *default:* `nil`) - Optional. The ID of the form to generate leads.
  *   `linkedMerchantId` (*type:* `String.t`, *default:* `nil`) - Optional. The ID of the merchant which is linked to the line item for product feed.
  *   `relatedVideoIds` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The IDs of the videos appear below the primary video ad when the ad is playing in the YouTube app on mobile devices.
  *   `targetFrequency` (*type:* `GoogleApi.DisplayVideo.V3.Model.TargetFrequency.t`, *default:* `nil`) - Optional. The average number of times you want ads from this line item to show to the same person over a certain period of time.
  *   `thirdPartyMeasurementConfigs` (*type:* `GoogleApi.DisplayVideo.V3.Model.ThirdPartyMeasurementConfigs.t`, *default:* `nil`) - Optional. The third-party measurement configs of the line item.
  *   `videoAdSequenceSettings` (*type:* `GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceSettings.t`, *default:* `nil`) - Optional. The settings related to VideoAdSequence.
  *   `viewFrequencyCap` (*type:* `GoogleApi.DisplayVideo.V3.Model.FrequencyCap.t`, *default:* `nil`) - The view frequency cap settings of the line item. The max_views field in this settings object must be used if assigning a limited cap. *Warning*: On **February 28, 2025**, frequency cap time periods greater than 30 days will no longer be accepted. [Read more about this announced change](/display-video/api/deprecations#features.lifetime_frequency_cap)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentCategory => String.t() | nil,
          :effectiveContentCategory => String.t() | nil,
          :inventorySourceSettings =>
            GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig.t() | nil,
          :leadFormId => String.t() | nil,
          :linkedMerchantId => String.t() | nil,
          :relatedVideoIds => list(String.t()) | nil,
          :targetFrequency => GoogleApi.DisplayVideo.V3.Model.TargetFrequency.t() | nil,
          :thirdPartyMeasurementConfigs =>
            GoogleApi.DisplayVideo.V3.Model.ThirdPartyMeasurementConfigs.t() | nil,
          :videoAdSequenceSettings =>
            GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceSettings.t() | nil,
          :viewFrequencyCap => GoogleApi.DisplayVideo.V3.Model.FrequencyCap.t() | nil
        }

  field(:contentCategory)
  field(:effectiveContentCategory)

  field(:inventorySourceSettings,
    as: GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersInventorySourceConfig
  )

  field(:leadFormId)
  field(:linkedMerchantId)
  field(:relatedVideoIds, type: :list)
  field(:targetFrequency, as: GoogleApi.DisplayVideo.V3.Model.TargetFrequency)

  field(:thirdPartyMeasurementConfigs,
    as: GoogleApi.DisplayVideo.V3.Model.ThirdPartyMeasurementConfigs
  )

  field(:videoAdSequenceSettings, as: GoogleApi.DisplayVideo.V3.Model.VideoAdSequenceSettings)
  field(:viewFrequencyCap, as: GoogleApi.DisplayVideo.V3.Model.FrequencyCap)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersSettings do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.YoutubeAndPartnersSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
