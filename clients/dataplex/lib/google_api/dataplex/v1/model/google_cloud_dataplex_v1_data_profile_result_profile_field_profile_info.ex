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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo do
  @moduledoc """
  The profile information for each field type.

  ## Attributes

  *   `distinctRatio` (*type:* `float()`, *default:* `nil`) - Ratio of rows with distinct values against total scanned rows. Not available for complex non-groupable field type, including RECORD, ARRAY, GEOGRAPHY, and JSON, as well as fields with REPEATABLE mode.
  *   `doubleProfile` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo.t`, *default:* `nil`) - Double type field information.
  *   `integerProfile` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo.t`, *default:* `nil`) - Integer type field information.
  *   `nullRatio` (*type:* `float()`, *default:* `nil`) - Ratio of rows with null value against total scanned rows.
  *   `stringProfile` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo.t`, *default:* `nil`) - String type field information.
  *   `topNValues` (*type:* `list(GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue.t)`, *default:* `nil`) - The list of top N non-null values, frequency and ratio with which they occur in the scanned data. N is 10 or equal to the number of distinct values in the field, whichever is smaller. Not available for complex non-groupable field type, including RECORD, ARRAY, GEOGRAPHY, and JSON, as well as fields with REPEATABLE mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distinctRatio => float() | nil,
          :doubleProfile =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo.t()
            | nil,
          :integerProfile =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo.t()
            | nil,
          :nullRatio => float() | nil,
          :stringProfile =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo.t()
            | nil,
          :topNValues =>
            list(
              GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue.t()
            )
            | nil
        }

  field(:distinctRatio)

  field(:doubleProfile,
    as:
      GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
  )

  field(:integerProfile,
    as:
      GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
  )

  field(:nullRatio)

  field(:stringProfile,
    as:
      GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
  )

  field(:topNValues,
    as:
      GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
