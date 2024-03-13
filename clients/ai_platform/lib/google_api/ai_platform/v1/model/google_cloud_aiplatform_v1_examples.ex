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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples do
  @moduledoc """
  Example-based explainability that returns the nearest neighbors from the provided dataset.

  ## Attributes

  *   `exampleGcsSource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExamplesExampleGcsSource.t`, *default:* `nil`) - The Cloud Storage input instances.
  *   `nearestNeighborSearchConfig` (*type:* `any()`, *default:* `nil`) - The full configuration for the generated index, the semantics are the same as metadata and should match [NearestNeighborSearchConfig](https://cloud.google.com/vertex-ai/docs/explainable-ai/configuring-explanations-example-based#nearest-neighbor-search-config).
  *   `neighborCount` (*type:* `integer()`, *default:* `nil`) - The number of neighbors to return when querying for examples.
  *   `presets` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Presets.t`, *default:* `nil`) - Simplified preset configuration, which automatically sets configuration values based on the desired query speed-precision trade-off and modality.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exampleGcsSource =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExamplesExampleGcsSource.t()
            | nil,
          :nearestNeighborSearchConfig => any() | nil,
          :neighborCount => integer() | nil,
          :presets => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Presets.t() | nil
        }

  field(:exampleGcsSource,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ExamplesExampleGcsSource
  )

  field(:nearestNeighborSearchConfig)
  field(:neighborCount)
  field(:presets, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Presets)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Examples do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end