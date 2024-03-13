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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource do
  @moduledoc """
  A snapshot of a resource as before or after the result of a change in change history.

  ## Attributes

  *   `account` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccount.t`, *default:* `nil`) - A snapshot of an Account resource in change history.
  *   `conversionEvent` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaConversionEvent.t`, *default:* `nil`) - A snapshot of a ConversionEvent resource in change history.
  *   `dataRetentionSettings` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings.t`, *default:* `nil`) - A snapshot of a data retention settings resource in change history.
  *   `dataStream` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStream.t`, *default:* `nil`) - A snapshot of a DataStream resource in change history.
  *   `firebaseLink` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaFirebaseLink.t`, *default:* `nil`) - A snapshot of a FirebaseLink resource in change history.
  *   `googleAdsLink` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaGoogleAdsLink.t`, *default:* `nil`) - A snapshot of a GoogleAdsLink resource in change history.
  *   `measurementProtocolSecret` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.t`, *default:* `nil`) - A snapshot of a MeasurementProtocolSecret resource in change history.
  *   `property` (*type:* `GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaProperty.t`, *default:* `nil`) - A snapshot of a Property resource in change history.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccount.t() | nil,
          :conversionEvent =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaConversionEvent.t()
            | nil,
          :dataRetentionSettings =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings.t()
            | nil,
          :dataStream =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStream.t() | nil,
          :firebaseLink =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaFirebaseLink.t() | nil,
          :googleAdsLink =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaGoogleAdsLink.t()
            | nil,
          :measurementProtocolSecret =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret.t()
            | nil,
          :property =>
            GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaProperty.t() | nil
        }

  field(:account, as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccount)

  field(:conversionEvent,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaConversionEvent
  )

  field(:dataRetentionSettings,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataRetentionSettings
  )

  field(:dataStream,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaDataStream
  )

  field(:firebaseLink,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaFirebaseLink
  )

  field(:googleAdsLink,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaGoogleAdsLink
  )

  field(:measurementProtocolSecret,
    as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
  )

  field(:property, as: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaProperty)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end