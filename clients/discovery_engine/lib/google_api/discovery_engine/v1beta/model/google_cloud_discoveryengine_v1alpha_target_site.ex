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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSite do
  @moduledoc """
  A target site for the SiteSearchEngine.

  ## Attributes

  *   `exactMatch` (*type:* `boolean()`, *default:* `nil`) - Input only. If set to false, a uri_pattern is generated to include all pages whose address contains the provided_uri_pattern. If set to true, an uri_pattern is generated to try to be an exact match of the provided_uri_pattern or just the specific page if the provided_uri_pattern is a specific one. provided_uri_pattern is always normalized to generate the URI pattern to be used by the search engine.
  *   `failureReason` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason.t`, *default:* `nil`) - Output only. Failure reason.
  *   `generatedUriPattern` (*type:* `String.t`, *default:* `nil`) - Output only. This is system-generated based on the provided_uri_pattern.
  *   `indexingStatus` (*type:* `String.t`, *default:* `nil`) - Output only. Indexing status.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The fully qualified resource name of the target site. `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/siteSearchEngine/targetSites/{target_site}` The `target_site_id` is system-generated.
  *   `providedUriPattern` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The user provided URI pattern from which the `generated_uri_pattern` is generated.
  *   `siteVerificationInfo` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo.t`, *default:* `nil`) - Output only. Site ownership and validity verification status.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the target site, e.g., whether the site is to be included or excluded.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The target site's last updated time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exactMatch => boolean() | nil,
          :failureReason =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason.t()
            | nil,
          :generatedUriPattern => String.t() | nil,
          :indexingStatus => String.t() | nil,
          :name => String.t() | nil,
          :providedUriPattern => String.t() | nil,
          :siteVerificationInfo =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo.t()
            | nil,
          :type => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:exactMatch)

  field(:failureReason,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
  )

  field(:generatedUriPattern)
  field(:indexingStatus)
  field(:name)
  field(:providedUriPattern)

  field(:siteVerificationInfo,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
  )

  field(:type)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSite do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSite.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTargetSite do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end