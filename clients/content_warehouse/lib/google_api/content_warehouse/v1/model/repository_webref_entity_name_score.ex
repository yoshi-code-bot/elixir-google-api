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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameScore do
  @moduledoc """
  Represents a score for an entity. Next available tag: 39.

  ## Attributes

  *   `bootstrappingPreviousIteration` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefBootstrappingScore.t`, *default:* `nil`) - If the EntityNameScore is part of a bootstrapped model, then this field contains the score_ratio from the previous model ("Model 0"). If Model 0 does not have a corresponding entry, because it did not know about this name for this entity, then bootstrapping_previous_iteration is left empty.
  *   `confidence` (*type:* `number()`, *default:* `nil`) - Confidence that this name is a trusted name of the entity. A reasonable threshold for name trust is 0.6. A name can be trusted and still have very low score_ratio, esp. if it is ambiguous (e.g. 'mercury') and/or not the dominant interpretation (e.g. "siberian husky" -> /m/06krnsr (a book)).
  *   `debugInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityDebugInfo.t)`, *default:* `nil`) - Debug information about the entity.
  *   `debugVariantSignals` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingNameVariantSignals.t)`, *default:* `nil`) - Source and score data, this is internal to refx (e.g. for demo/debug).
  *   `extendedScoreRatio` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore.t)`, *default:* `nil`) - Stores region specific score ratios for the entity when it is significantly different from the language version above.
  *   `includeInModel` (*type:* `boolean()`, *default:* `nil`) - Include this name in the name lookup table.
  *   `internalBootstrapIsOpenWorld` (*type:* `boolean()`, *default:* `nil`) - Transient field, only used in bootstrap pipeline.
  *   `internalIsClusterParent` (*type:* `boolean()`, *default:* `nil`) - 
  *   `isClusterGlobal` (*type:* `boolean()`, *default:* `nil`) - Set to true iff the concept is cluster parent and the name can be a name for any child of the cluster. (e.g. 'starbucks' is cluster_global for the [Starbucks] chain cluster).
  *   `isDropped` (*type:* `boolean()`, *default:* `nil`) - Documented at: google3/repository/webref/enricher/core/data/scored_entity_name.h
  *   `isMatchlessResultContext` (*type:* `boolean()`, *default:* `nil`) - Only for context names: Whether this EntityNameScore represents an entity that was dominant in the search results but was not annotated by QRef during learning. Matchless result contexts are useful for bootstrapping, where different model iterations may have different names and thus context scores from Model 0 that are inconsistent with the names from Model 1.
  *   `isPruned` (*type:* `boolean()`, *default:* `nil`) - Documented at: google3/repository/webref/enricher/core/data/scored_entity_name.h
  *   `mid` (*type:* `String.t`, *default:* `nil`) - The id of the entity.
  *   `nameMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingNameEntityMetadata.t`, *default:* `nil`) - Metadata about this name aggregated from name signals.
  *   `rangeMetadata` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefRangeMetadata.t)`, *default:* `nil`) - Metadata of segment range, which is annotated by this entity.
  *   `score` (*type:* `number()`, *default:* `nil`) - The absolute score of that entity. score = artificial_score + volume_based_score
  *   `scoreRatio` (*type:* `number()`, *default:* `nil`) - Ratio between this entity score and the total score over all entities. This is including the "open world" information if it was estimated.
  *   `useAsNameCandidate` (*type:* `boolean()`, *default:* `nil`) - When this field is true, we consider this context name as candidate in Enricher's names pipeline.
  *   `volumeBasedScore` (*type:* `number()`, *default:* `nil`) - Absolute score that comes from quantitative sources such as navboost clicks, anchors, etc. artificial_score = score - volume_based_score
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bootstrappingPreviousIteration =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefBootstrappingScore.t() | nil,
          :confidence => number() | nil,
          :debugInfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityDebugInfo.t()) | nil,
          :debugVariantSignals =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingNameVariantSignals.t()
            )
            | nil,
          :extendedScoreRatio =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore.t())
            | nil,
          :includeInModel => boolean() | nil,
          :internalBootstrapIsOpenWorld => boolean() | nil,
          :internalIsClusterParent => boolean() | nil,
          :isClusterGlobal => boolean() | nil,
          :isDropped => boolean() | nil,
          :isMatchlessResultContext => boolean() | nil,
          :isPruned => boolean() | nil,
          :mid => String.t() | nil,
          :nameMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingNameEntityMetadata.t()
            | nil,
          :rangeMetadata =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefRangeMetadata.t()) | nil,
          :score => number() | nil,
          :scoreRatio => number() | nil,
          :useAsNameCandidate => boolean() | nil,
          :volumeBasedScore => number() | nil
        }

  field(:bootstrappingPreviousIteration,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefBootstrappingScore
  )

  field(:confidence)

  field(:debugInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityDebugInfo,
    type: :list
  )

  field(:debugVariantSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingNameVariantSignals,
    type: :list
  )

  field(:extendedScoreRatio,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefExtendedEntityNameScore,
    type: :list
  )

  field(:includeInModel)
  field(:internalBootstrapIsOpenWorld)
  field(:internalIsClusterParent)
  field(:isClusterGlobal)
  field(:isDropped)
  field(:isMatchlessResultContext)
  field(:isPruned)
  field(:mid)

  field(:nameMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingNameEntityMetadata
  )

  field(:rangeMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefRangeMetadata,
    type: :list
  )

  field(:score)
  field(:scoreRatio)
  field(:useAsNameCandidate)
  field(:volumeBasedScore)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameScore do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameScore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameScore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
