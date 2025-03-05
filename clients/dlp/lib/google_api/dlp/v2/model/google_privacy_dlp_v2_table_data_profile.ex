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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableDataProfile do
  @moduledoc """
  The profile for a scanned table.

  ## Attributes

  *   `configSnapshot` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot.t`, *default:* `nil`) - The snapshot of the configurations used to generate the profile.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the table was created.
  *   `dataRiskLevel` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataRiskLevel.t`, *default:* `nil`) - The data risk level of this table.
  *   `dataSourceType` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType.t`, *default:* `nil`) - The resource type that was profiled.
  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - If the resource is BigQuery, the dataset ID.
  *   `datasetLocation` (*type:* `String.t`, *default:* `nil`) - If supported, the location where the dataset's data is stored. See https://cloud.google.com/bigquery/docs/locations for supported locations.
  *   `datasetProjectId` (*type:* `String.t`, *default:* `nil`) - The Google Cloud project ID that owns the resource.
  *   `encryptionStatus` (*type:* `String.t`, *default:* `nil`) - How the table is encrypted.
  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The time when this table expires.
  *   `failedColumnCount` (*type:* `String.t`, *default:* `nil`) - The number of columns skipped in the table because of an error.
  *   `fullResource` (*type:* `String.t`, *default:* `nil`) - The Cloud Asset Inventory resource that was profiled in order to generate this TableDataProfile. https://cloud.google.com/apis/design/resource_names#full_resource_name
  *   `lastModifiedTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when this table was last modified
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the profile.
  *   `otherInfoTypes` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherInfoTypeSummary.t)`, *default:* `nil`) - Other infoTypes found in this table's data.
  *   `predictedInfoTypes` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeSummary.t)`, *default:* `nil`) - The infoTypes predicted from this table's data.
  *   `profileLastGenerated` (*type:* `DateTime.t`, *default:* `nil`) - The last time the profile was generated.
  *   `profileStatus` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProfileStatus.t`, *default:* `nil`) - Success or error status from the most recent profile generation attempt. May be empty if the profile is still being generated.
  *   `projectDataProfile` (*type:* `String.t`, *default:* `nil`) - The resource name of the project data profile for this table.
  *   `relatedResources` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RelatedResource.t)`, *default:* `nil`) - Resources related to this profile.
  *   `resourceLabels` (*type:* `map()`, *default:* `nil`) - The labels applied to the resource at the time the profile was generated.
  *   `resourceVisibility` (*type:* `String.t`, *default:* `nil`) - How broadly a resource has been shared.
  *   `rowCount` (*type:* `String.t`, *default:* `nil`) - Number of rows in the table when the profile was generated. This will not be populated for BigLake tables.
  *   `sampleFindingsTable` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t`, *default:* `nil`) - The BigQuery table to which the sample findings are written.
  *   `scannedColumnCount` (*type:* `String.t`, *default:* `nil`) - The number of columns profiled in the table.
  *   `sensitivityScore` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore.t`, *default:* `nil`) - The sensitivity score of this table.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of a profile.
  *   `tableId` (*type:* `String.t`, *default:* `nil`) - The table ID.
  *   `tableSizeBytes` (*type:* `String.t`, *default:* `nil`) - The size of the table when the profile was generated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configSnapshot =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot.t() | nil,
          :createTime => DateTime.t() | nil,
          :dataRiskLevel => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataRiskLevel.t() | nil,
          :dataSourceType => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType.t() | nil,
          :datasetId => String.t() | nil,
          :datasetLocation => String.t() | nil,
          :datasetProjectId => String.t() | nil,
          :encryptionStatus => String.t() | nil,
          :expirationTime => DateTime.t() | nil,
          :failedColumnCount => String.t() | nil,
          :fullResource => String.t() | nil,
          :lastModifiedTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :otherInfoTypes =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherInfoTypeSummary.t()) | nil,
          :predictedInfoTypes =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeSummary.t()) | nil,
          :profileLastGenerated => DateTime.t() | nil,
          :profileStatus => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProfileStatus.t() | nil,
          :projectDataProfile => String.t() | nil,
          :relatedResources =>
            list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RelatedResource.t()) | nil,
          :resourceLabels => map() | nil,
          :resourceVisibility => String.t() | nil,
          :rowCount => String.t() | nil,
          :sampleFindingsTable =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable.t() | nil,
          :scannedColumnCount => String.t() | nil,
          :sensitivityScore =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore.t() | nil,
          :state => String.t() | nil,
          :tableId => String.t() | nil,
          :tableSizeBytes => String.t() | nil
        }

  field(:configSnapshot, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataProfileConfigSnapshot)
  field(:createTime, as: DateTime)
  field(:dataRiskLevel, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataRiskLevel)
  field(:dataSourceType, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DataSourceType)
  field(:datasetId)
  field(:datasetLocation)
  field(:datasetProjectId)
  field(:encryptionStatus)
  field(:expirationTime, as: DateTime)
  field(:failedColumnCount)
  field(:fullResource)
  field(:lastModifiedTime, as: DateTime)
  field(:name)

  field(:otherInfoTypes,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2OtherInfoTypeSummary,
    type: :list
  )

  field(:predictedInfoTypes,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeSummary,
    type: :list
  )

  field(:profileLastGenerated, as: DateTime)
  field(:profileStatus, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ProfileStatus)
  field(:projectDataProfile)

  field(:relatedResources,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2RelatedResource,
    type: :list
  )

  field(:resourceLabels, type: :map)
  field(:resourceVisibility)
  field(:rowCount)
  field(:sampleFindingsTable, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2BigQueryTable)
  field(:scannedColumnCount)
  field(:sensitivityScore, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2SensitivityScore)
  field(:state)
  field(:tableId)
  field(:tableSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableDataProfile do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableDataProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TableDataProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
