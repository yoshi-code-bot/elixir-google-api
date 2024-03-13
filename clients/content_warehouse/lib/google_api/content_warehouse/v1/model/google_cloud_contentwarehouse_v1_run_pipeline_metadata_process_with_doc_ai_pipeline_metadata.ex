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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata do
  @moduledoc """
  The metadata message for Process-with-DocAi pipeline.

  ## Attributes

  *   `documents` (*type:* `list(String.t)`, *default:* `nil`) - The input list of all the resource names of the documents to be processed.
  *   `processorInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessorInfo.t`, *default:* `nil`) - The DocAI processor to process the documents with.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documents => list(String.t()) | nil,
          :processorInfo =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessorInfo.t()
            | nil
        }

  field(:documents, type: :list)

  field(:processorInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1ProcessorInfo
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RunPipelineMetadataProcessWithDocAiPipelineMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
