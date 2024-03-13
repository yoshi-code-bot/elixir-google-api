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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata do
  @moduledoc """
  Describes metadata for a TensorboardTimeSeries.

  ## Attributes

  *   `maxBlobSequenceLength` (*type:* `String.t`, *default:* `nil`) - Output only. The largest blob sequence length (number of blobs) of all data points in this time series, if its ValueType is BLOB_SEQUENCE.
  *   `maxStep` (*type:* `String.t`, *default:* `nil`) - Output only. Max step index of all data points within a TensorboardTimeSeries.
  *   `maxWallTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Max wall clock timestamp of all data points within a TensorboardTimeSeries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxBlobSequenceLength => String.t() | nil,
          :maxStep => String.t() | nil,
          :maxWallTime => DateTime.t() | nil
        }

  field(:maxBlobSequenceLength)
  field(:maxStep)
  field(:maxWallTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end