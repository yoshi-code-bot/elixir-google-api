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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult do
  @moduledoc """
  Represents the search results.

  ## Attributes

  *   `chunk` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaChunk.t`, *default:* `nil`) - The chunk data in the search response if the SearchRequest.ContentSearchSpec.search_result_mode is set to CHUNKS.
  *   `document` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument.t`, *default:* `nil`) - The document data snippet in the search response. Only fields that are marked as `retrievable` are populated.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Document.id of the searched Document.
  *   `modelScores` (*type:* `%{optional(String.t) => GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDoubleList.t}`, *default:* `nil`) - Output only. Google provided available scores.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chunk =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaChunk.t() | nil,
          :document =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument.t()
            | nil,
          :id => String.t() | nil,
          :modelScores =>
            %{
              optional(String.t()) =>
                GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDoubleList.t()
            }
            | nil
        }

  field(:chunk, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaChunk)

  field(:document,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDocument
  )

  field(:id)

  field(:modelScores,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaDoubleList,
    type: :map
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchResponseSearchResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
