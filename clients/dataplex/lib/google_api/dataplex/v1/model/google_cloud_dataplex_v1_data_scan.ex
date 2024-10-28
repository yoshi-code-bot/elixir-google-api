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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScan do
  @moduledoc """
  Represents a user-visible job which provides the insights for the related data source.For example: Data Quality: generates queries based on the rules and runs against the data to get data quality check results. Data Profile: analyzes the data in table(s) and generates insights about the structure, content and relationships (such as null percent, cardinality, min/max/mean, etc).

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the scan was created.
  *   `data` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataSource.t`, *default:* `nil`) - Required. The data source for DataScan.
  *   `dataDiscoveryResult` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResult.t`, *default:* `nil`) - Output only. The result of a data discovery scan.
  *   `dataDiscoverySpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoverySpec.t`, *default:* `nil`) - Settings for a data discovery scan.
  *   `dataProfileResult` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResult.t`, *default:* `nil`) - Output only. The result of a data profile scan.
  *   `dataProfileSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec.t`, *default:* `nil`) - Settings for a data profile scan.
  *   `dataQualityResult` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult.t`, *default:* `nil`) - Output only. The result of a data quality scan.
  *   `dataQualitySpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualitySpec.t`, *default:* `nil`) - Settings for a data quality scan.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the scan. Must be between 1-1024 characters.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User friendly display name. Must be between 1-256 characters.
  *   `executionSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionSpec.t`, *default:* `nil`) - Optional. DataScan execution settings.If not specified, the fields in it will use their default values.
  *   `executionStatus` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus.t`, *default:* `nil`) - Output only. Status of the data scan execution.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User-defined labels for the scan.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the scan, of the form: projects/{project}/locations/{location_id}/dataScans/{datascan_id}, where project refers to a project_id or project_number and location_id refers to a GCP region.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the DataScan.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. The type of DataScan.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System generated globally unique ID for the scan. This ID will be different if the scan is deleted and re-created with the same name.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the scan was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :data => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataSource.t() | nil,
          :dataDiscoveryResult =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResult.t() | nil,
          :dataDiscoverySpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoverySpec.t() | nil,
          :dataProfileResult =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResult.t() | nil,
          :dataProfileSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec.t() | nil,
          :dataQualityResult =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult.t() | nil,
          :dataQualitySpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualitySpec.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :executionSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionSpec.t() | nil,
          :executionStatus =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:data, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataSource)

  field(:dataDiscoveryResult,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoveryResult
  )

  field(:dataDiscoverySpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataDiscoverySpec)

  field(:dataProfileResult, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResult)

  field(:dataProfileSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec)

  field(:dataQualityResult, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualityResult)

  field(:dataQualitySpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataQualitySpec)
  field(:description)
  field(:displayName)

  field(:executionSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionSpec)

  field(:executionStatus,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus
  )

  field(:labels, type: :map)
  field(:name)
  field(:state)
  field(:type)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScan do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
