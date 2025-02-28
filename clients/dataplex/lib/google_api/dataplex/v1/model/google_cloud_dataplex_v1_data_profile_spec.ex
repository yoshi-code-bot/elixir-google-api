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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec do
  @moduledoc """
  DataProfileScan related setting.

  ## Attributes

  *   `excludeFields` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecSelectedFields.t`, *default:* `nil`) - Optional. The fields to exclude from data profile.If specified, the fields will be excluded from data profile, regardless of include_fields value.
  *   `includeFields` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecSelectedFields.t`, *default:* `nil`) - Optional. The fields to include in data profile.If not specified, all fields at the time of profile scan job execution are included, except for ones listed in exclude_fields.
  *   `postScanActions` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecPostScanActions.t`, *default:* `nil`) - Optional. Actions to take upon job completion..
  *   `rowFilter` (*type:* `String.t`, *default:* `nil`) - Optional. A filter applied to all rows in a single DataScan job. The filter needs to be a valid SQL expression for a WHERE clause in GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax#where_clause).Example: col1 >= 0 AND col2 < 10
  *   `samplingPercent` (*type:* `number()`, *default:* `nil`) - Optional. The percentage of the records to be selected from the dataset for DataScan. Value can range between 0.0 and 100.0 with up to 3 significant decimal digits. Sampling is not applied if sampling_percent is not specified, 0 or 100.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludeFields =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecSelectedFields.t()
            | nil,
          :includeFields =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecSelectedFields.t()
            | nil,
          :postScanActions =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecPostScanActions.t()
            | nil,
          :rowFilter => String.t() | nil,
          :samplingPercent => number() | nil
        }

  field(:excludeFields,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecSelectedFields
  )

  field(:includeFields,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecSelectedFields
  )

  field(:postScanActions,
    as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpecPostScanActions
  )

  field(:rowFilter)
  field(:samplingPercent)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
