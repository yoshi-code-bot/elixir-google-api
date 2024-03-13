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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesOperationMetadata do
  @moduledoc """
  Details of operations that perform import Feature values.

  ## Attributes

  *   `blockingOperationIds` (*type:* `list(String.t)`, *default:* `nil`) - List of ImportFeatureValues operations running under a single EntityType that are blocking this operation.
  *   `genericMetadata` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenericOperationMetadata.t`, *default:* `nil`) - Operation metadata for Featurestore import Feature values.
  *   `importedEntityCount` (*type:* `String.t`, *default:* `nil`) - Number of entities that have been imported by the operation.
  *   `importedFeatureValueCount` (*type:* `String.t`, *default:* `nil`) - Number of Feature values that have been imported by the operation.
  *   `invalidRowCount` (*type:* `String.t`, *default:* `nil`) - The number of rows in input source that weren't imported due to either * Not having any featureValues. * Having a null entityId. * Having a null timestamp. * Not being parsable (applicable for CSV sources).
  *   `sourceUris` (*type:* `list(String.t)`, *default:* `nil`) - The source URI from where Feature values are imported.
  *   `timestampOutsideRetentionRowsCount` (*type:* `String.t`, *default:* `nil`) - The number rows that weren't ingested due to having timestamps outside the retention boundary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockingOperationIds => list(String.t()) | nil,
          :genericMetadata =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenericOperationMetadata.t()
            | nil,
          :importedEntityCount => String.t() | nil,
          :importedFeatureValueCount => String.t() | nil,
          :invalidRowCount => String.t() | nil,
          :sourceUris => list(String.t()) | nil,
          :timestampOutsideRetentionRowsCount => String.t() | nil
        }

  field(:blockingOperationIds, type: :list)

  field(:genericMetadata,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GenericOperationMetadata
  )

  field(:importedEntityCount)
  field(:importedFeatureValueCount)
  field(:invalidRowCount)
  field(:sourceUris, type: :list)
  field(:timestampOutsideRetentionRowsCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesOperationMetadata do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end