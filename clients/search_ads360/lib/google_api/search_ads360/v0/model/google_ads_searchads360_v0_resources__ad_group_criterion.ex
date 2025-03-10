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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion do
  @moduledoc """
  An ad group criterion. The ad_group_criterion report only returns criteria that were explicitly added to the ad group.

  ## Attributes

  *   `adGroup` (*type:* `String.t`, *default:* `nil`) - Immutable. The ad group to which the criterion belongs.
  *   `ageRange` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AgeRangeInfo.t`, *default:* `nil`) - Immutable. Age range.
  *   `bidModifier` (*type:* `float()`, *default:* `nil`) - The modifier for the bid when the criterion matches. The modifier must be in the range: 0.1 - 10.0. Most targetable criteria types support modifiers.
  *   `cpcBidMicros` (*type:* `String.t`, *default:* `nil`) - The CPC (cost-per-click) bid.
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The timestamp when this ad group criterion was created. The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
  *   `criterionId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the criterion.
  *   `effectiveCpcBidMicros` (*type:* `String.t`, *default:* `nil`) - Output only. The effective CPC (cost-per-click) bid.
  *   `effectiveLabels` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The resource names of effective labels attached to this ad group criterion. An effective label is a label inherited or directly assigned to this ad group criterion.
  *   `engineId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the ad group criterion in the external engine account. This field is for non-Google Ads account only, for example, Yahoo Japan, Microsoft, Baidu etc. For Google Ads entity, use "ad_group_criterion.criterion_id" instead.
  *   `engineStatus` (*type:* `String.t`, *default:* `nil`) - Output only. The Engine Status for ad group criterion.
  *   `finalUrlSuffix` (*type:* `String.t`, *default:* `nil`) - URL template for appending params to final URL.
  *   `finalUrls` (*type:* `list(String.t)`, *default:* `nil`) - The list of possible final URLs after all cross-domain redirects for the ad.
  *   `gender` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_GenderInfo.t`, *default:* `nil`) - Immutable. Gender.
  *   `keyword` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo.t`, *default:* `nil`) - Immutable. Keyword.
  *   `labels` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The resource names of labels attached to this ad group criterion.
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The datetime when this ad group criterion was last modified. The datetime is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss.ssssss" format.
  *   `listingGroup` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_ListingGroupInfo.t`, *default:* `nil`) - Immutable. Listing group.
  *   `location` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationInfo.t`, *default:* `nil`) - Immutable. Location.
  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Immutable. Whether to target (`false`) or exclude (`true`) the criterion. This field is immutable. To switch a criterion from positive to negative, remove then re-add it.
  *   `positionEstimates` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion_PositionEstimates.t`, *default:* `nil`) - Output only. Estimates for criterion bids at various positions.
  *   `qualityInfo` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion_QualityInfo.t`, *default:* `nil`) - Output only. Information regarding the quality of the criterion.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the ad group criterion. Ad group criterion resource names have the form: `customers/{customer_id}/adGroupCriteria/{ad_group_id}~{criterion_id}`
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the criterion. This is the status of the ad group criterion entity, set by the client. Note: UI reports may incorporate additional information that affects whether a criterion is eligible to run. In some cases a criterion that's REMOVED in the API can still show as enabled in the UI. For example, campaigns by default show to users of all age ranges unless excluded. The UI will show each age range as "enabled", since they're eligible to see the ads; but AdGroupCriterion.status will show "removed", since no positive criterion was added.
  *   `trackingUrlTemplate` (*type:* `String.t`, *default:* `nil`) - The URL template for constructing a tracking URL.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the criterion.
  *   `userList` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UserListInfo.t`, *default:* `nil`) - Immutable. User List.
  *   `webpage` (*type:* `GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_WebpageInfo.t`, *default:* `nil`) - Immutable. Webpage
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adGroup => String.t() | nil,
          :ageRange =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AgeRangeInfo.t() | nil,
          :bidModifier => float() | nil,
          :cpcBidMicros => String.t() | nil,
          :creationTime => String.t() | nil,
          :criterionId => String.t() | nil,
          :effectiveCpcBidMicros => String.t() | nil,
          :effectiveLabels => list(String.t()) | nil,
          :engineId => String.t() | nil,
          :engineStatus => String.t() | nil,
          :finalUrlSuffix => String.t() | nil,
          :finalUrls => list(String.t()) | nil,
          :gender =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_GenderInfo.t() | nil,
          :keyword =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo.t() | nil,
          :labels => list(String.t()) | nil,
          :lastModifiedTime => String.t() | nil,
          :listingGroup =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_ListingGroupInfo.t()
            | nil,
          :location =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationInfo.t() | nil,
          :negative => boolean() | nil,
          :positionEstimates =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion_PositionEstimates.t()
            | nil,
          :qualityInfo =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion_QualityInfo.t()
            | nil,
          :resourceName => String.t() | nil,
          :status => String.t() | nil,
          :trackingUrlTemplate => String.t() | nil,
          :type => String.t() | nil,
          :userList =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UserListInfo.t() | nil,
          :webpage =>
            GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_WebpageInfo.t() | nil
        }

  field(:adGroup)
  field(:ageRange, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_AgeRangeInfo)
  field(:bidModifier)
  field(:cpcBidMicros)
  field(:creationTime)
  field(:criterionId)
  field(:effectiveCpcBidMicros)
  field(:effectiveLabels, type: :list)
  field(:engineId)
  field(:engineStatus)
  field(:finalUrlSuffix)
  field(:finalUrls, type: :list)
  field(:gender, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_GenderInfo)
  field(:keyword, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_KeywordInfo)
  field(:labels, type: :list)
  field(:lastModifiedTime)

  field(:listingGroup,
    as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_ListingGroupInfo
  )

  field(:location, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_LocationInfo)
  field(:negative)

  field(:positionEstimates,
    as:
      GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion_PositionEstimates
  )

  field(:qualityInfo,
    as:
      GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion_QualityInfo
  )

  field(:resourceName)
  field(:status)
  field(:trackingUrlTemplate)
  field(:type)
  field(:userList, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_UserListInfo)
  field(:webpage, as: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_WebpageInfo)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AdGroupCriterion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
