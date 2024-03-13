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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadata do
  @moduledoc """
  Metadata about MDVC (go/mdvc). Next available tag: 18.

  ## Attributes

  *   `dimension` (*type:* `list(String.t)`, *default:* `nil`) - Undergoing migration into the PerVertical message. Avoid using it. Concept ids of MDVC dimensions of this concept.
  *   `expandedOutputConceptId` (*type:* `list(String.t)`, *default:* `nil`) - Undergoing migration into the PerVertical message. Avoid using it. List of encoded mids to be expanded in WebRef/QRef output whenever this entity gets annotated. Will be populated in the annotators once static data is deprecated. b/78866814.
  *   `generalization` (*type:* `list(String.t)`, *default:* `nil`) - Undergoing migration into the PerVertical message. Avoid using it. Concept ids of MDVC generalizations of this concept.
  *   `isSynthetic` (*type:* `boolean()`, *default:* `nil`) - True iff the topic is synthetically created during by MDVC extraction.
  *   `perVertical` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadataPerVertical.t)`, *default:* `nil`) - Data, specific to particular verticals.
  *   `resolutionPriority` (*type:* `integer()`, *default:* `nil`) - Undergoing migration into the PerVertical message. Avoid using it. Resolution priority for this entity. In case a query has many possible resolutions, only the ones with the highest resolution priority are annotated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimension => list(String.t()) | nil,
          :expandedOutputConceptId => list(String.t()) | nil,
          :generalization => list(String.t()) | nil,
          :isSynthetic => boolean() | nil,
          :perVertical =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadataPerVertical.t())
            | nil,
          :resolutionPriority => integer() | nil
        }

  field(:dimension, type: :list)
  field(:expandedOutputConceptId, type: :list)
  field(:generalization, type: :list)
  field(:isSynthetic)

  field(:perVertical,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadataPerVertical,
    type: :list
  )

  field(:resolutionPriority)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefMdvcMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
