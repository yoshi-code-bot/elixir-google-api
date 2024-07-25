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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata do
  @moduledoc """
  Metadata related to the progress of the ImportSampleQueries operation. This will be returned by the google.longrunning.Operation.metadata field.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - ImportSampleQueries operation create time.
  *   `failureCount` (*type:* `String.t`, *default:* `nil`) - Count of SampleQuerys that failed to be imported.
  *   `successCount` (*type:* `String.t`, *default:* `nil`) - Count of SampleQuerys successfully imported.
  *   `totalCount` (*type:* `String.t`, *default:* `nil`) - Total count of SampleQuerys that were processed.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - ImportSampleQueries operation last update time. If the operation is done, this is also the finish time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :failureCount => String.t() | nil,
          :successCount => String.t() | nil,
          :totalCount => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:failureCount)
  field(:successCount)
  field(:totalCount)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
