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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult do
  @moduledoc """
  RecommendationResult represents a generic recommendation result with associated metadata.

  ## Attributes

  *   `document` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Document.t`, *default:* `nil`) - Set if `returnDocument` is set to true in RecommendRequest.params.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Resource ID of the recommended Document.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - Additional Document metadata or annotations. Possible values: * `score`: Recommendation score in double value. Is set if `returnScore` is set to true in RecommendRequest.params.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :document =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Document.t() | nil,
          :id => String.t() | nil,
          :metadata => map() | nil
        }

  field(:document, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Document)
  field(:id)
  field(:metadata, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1RecommendResponseRecommendationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
