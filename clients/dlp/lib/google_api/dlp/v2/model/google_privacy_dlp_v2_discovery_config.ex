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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig do
  @moduledoc """
  Configuration for discovery to scan resources for profile generation. Only one discovery configuration may exist per organization, folder, or project. The generated data profiles are retained according to the [data retention policy] (https://cloud.google.com/sensitive-data-protection/docs/data-profiles#retention).

  ## Attributes

  *   `actions` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction.t)`, *default:* `nil`) - Actions to execute at the completion of scanning.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of a DiscoveryConfig.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name (max 100 chars)
  *   `errors` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.t)`, *default:* `nil`) - Output only. A stream of errors encountered when the config was activated. Repeated errors may result in the config automatically being paused. Output only field. Will return the last 100 errors. Whenever the config is modified this list will be cleared.
  *   `inspectTemplates` (*type:* `list(String.t)`, *default:* `nil`) - Detection logic for profile generation. Not all template features are used by Discovery. FindingLimits, include_quote and exclude_info_types have no impact on Discovery. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including "global"). Each region is scanned using the applicable template. If no region-specific template is specified, but a "global" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/sensitive-data-protection/docs/data-profiles#data-residency.
  *   `lastRunTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of the last time this config was executed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique resource name for the DiscoveryConfig, assigned by the service when the DiscoveryConfig is created, for example `projects/dlp-test-project/locations/global/discoveryConfigs/53234423`.
  *   `orgConfig` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OrgConfig.t`, *default:* `nil`) - Only set when the parent is an org.
  *   `otherCloudStartingLocation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation.t`, *default:* `nil`) - Must be set only when scanning other clouds.
  *   `processingLocation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProcessingLocation.t`, *default:* `nil`) - Optional. Processing location configuration. Vertex AI dataset scanning will set processing_location.image_fallback_type to MultiRegionProcessing by default.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Required. A status for this configuration.
  *   `targets` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryTarget.t)`, *default:* `nil`) - Target to match against for determining what to scan and how frequently.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update timestamp of a DiscoveryConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actions => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction.t()) | nil,
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :errors => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error.t()) | nil,
          :inspectTemplates => list(String.t()) | nil,
          :lastRunTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :orgConfig => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OrgConfig.t() | nil,
          :otherCloudStartingLocation =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation.t() | nil,
          :processingLocation =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProcessingLocation.t() | nil,
          :status => String.t() | nil,
          :targets => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryTarget.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:actions, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction, type: :list)
  field(:createTime, as: DateTime)
  field(:displayName)
  field(:errors, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Error, type: :list)
  field(:inspectTemplates, type: :list)
  field(:lastRunTime, as: DateTime)
  field(:name)
  field(:orgConfig, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OrgConfig)

  field(:otherCloudStartingLocation,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherCloudDiscoveryStartingLocation
  )

  field(:processingLocation, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProcessingLocation)
  field(:status)
  field(:targets, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryTarget, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DiscoveryConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
