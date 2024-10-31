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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction do
  @moduledoc """
  A task to execute when a data profile has been generated.

  ## Attributes

  *   `exportData` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export.t`, *default:* `nil`) - Export data profiles into a provided location.
  *   `pubSubNotification` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PubSubNotification.t`, *default:* `nil`) - Publish a message into the Pub/Sub topic.
  *   `publishToChronicle` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToChronicle.t`, *default:* `nil`) - Publishes generated data profiles to Google Security Operations. For more information, see [Use Sensitive Data Protection data in context-aware analytics](https://cloud.google.com/chronicle/docs/detection/usecase-dlp-high-risk-user-download).
  *   `publishToScc` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToSecurityCommandCenter.t`, *default:* `nil`) - Publishes findings to Security Command Center for each data profile.
  *   `tagResources` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TagResources.t`, *default:* `nil`) - Tags the profiled resources with the specified tag values.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exportData => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export.t() | nil,
          :pubSubNotification =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PubSubNotification.t() | nil,
          :publishToChronicle =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToChronicle.t() | nil,
          :publishToScc =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToSecurityCommandCenter.t() | nil,
          :tagResources => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TagResources.t() | nil
        }

  field(:exportData, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Export)
  field(:pubSubNotification, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PubSubNotification)
  field(:publishToChronicle, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToChronicle)

  field(:publishToScc, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PublishToSecurityCommandCenter)

  field(:tagResources, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TagResources)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
