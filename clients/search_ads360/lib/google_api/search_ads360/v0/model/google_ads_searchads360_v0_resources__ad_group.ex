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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroup do
  @moduledoc """
  An ad group.

  ## Attributes

  *   `adRotationMode` (*type:* `String.t`, *default:* `nil`) - The ad rotation mode of the ad group.
  *   `cpcBidMicros` (*type:* `String.t`, *default:* `nil`) - The maximum CPC (cost-per-click) bid.
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The timestamp when this ad_group was created. The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
  *   `endDate` (*type:* `String.t`, *default:* `nil`) - Output only. Date when the ad group ends serving ads. By default, the ad group ends on the ad group's end date. If this field is set, then the ad group ends at the end of the specified date in the customer's time zone. This field is only available for Microsoft Advertising and Facebook gateway accounts. Format: YYYY-MM-DD Example: 2019-03-14
  *   `engineId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the ad group in the external engine account. This field is for non-Google Ads account only, for example, Yahoo Japan, Microsoft, Baidu etc. For Google Ads entity, use "ad_group.id" instead.
  *   `engineStatus` (*type:* `String.t`, *default:* `nil`) - Output only. The Engine Status for ad group.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the ad group.
  *   `labels` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The resource names of labels attached to this ad group.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Output only. The language of the ads and keywords in an ad group. This field is only available for Microsoft Advertising accounts. More details: https://docs.microsoft.com/en-us/advertising/guides/ad-languages?view=bingads-13#adlanguage
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The datetime when this ad group was last modified. The datetime is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the ad group. This field is required and should not be empty when creating new ad groups. It must contain fewer than 255 UTF-8 full-width characters. It must not contain any null (code point 0x0), NL line feed (code point 0xA) or carriage return (code point 0xD) characters.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the ad group. Ad group resource names have the form: `customers/{customer_id}/adGroups/{ad_group_id}`
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - Output only. Date when this ad group starts serving ads. By default, the ad group starts now or the ad group's start date, whichever is later. If this field is set, then the ad group starts at the beginning of the specified date in the customer's time zone. This field is only available for Microsoft Advertising and Facebook gateway accounts. Format: YYYY-MM-DD Example: 2019-03-14
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the ad group.
  *   `targetingSetting` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetingSetting.t`, *default:* `nil`) - Setting for targeting related features.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Immutable. The type of the ad group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adRotationMode => String.t() | nil,
          :cpcBidMicros => String.t() | nil,
          :creationTime => String.t() | nil,
          :endDate => String.t() | nil,
          :engineId => String.t() | nil,
          :engineStatus => String.t() | nil,
          :id => String.t() | nil,
          :labels => list(String.t()) | nil,
          :languageCode => String.t() | nil,
          :lastModifiedTime => String.t() | nil,
          :name => String.t() | nil,
          :resourceName => String.t() | nil,
          :startDate => String.t() | nil,
          :status => String.t() | nil,
          :targetingSetting =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetingSetting.t()
            | nil,
          :type => String.t() | nil
        }

  field(:adRotationMode)
  field(:cpcBidMicros)
  field(:creationTime)
  field(:endDate)
  field(:engineId)
  field(:engineStatus)
  field(:id)
  field(:labels, type: :list)
  field(:languageCode)
  field(:lastModifiedTime)
  field(:name)
  field(:resourceName)
  field(:startDate)
  field(:status)

  field(:targetingSetting,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_TargetingSetting
  )

  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroup do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroup.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end