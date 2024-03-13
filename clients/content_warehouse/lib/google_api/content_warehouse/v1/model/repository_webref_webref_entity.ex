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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity do
  @moduledoc """
  All information about a single entity available to WebRef. Next available tag: 7

  ## Attributes

  *   `annotatedRelationship` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityRelationship.t)`, *default:* `nil`) - Information about links (e.g. implications) between the annotated entities.
  *   `annotations` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityAnnotations.t`, *default:* `nil`) - All annotations of this entity on the given document.
  *   `collections` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityCollections.t`, *default:* `nil`) - Information about the collections of this entity.
  *   `entityJoin` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityJoin.t`, *default:* `nil`) - Metadata and raw signals used by the annotator. Intended for internal use. Steer clear of adding new dependencies on fields in this proto, especially external dependencies. If you are a Refx client and would like to consume entity metadata, consider querying TopicServer instead.
  *   `id` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityId.t`, *default:* `nil`) - An identifier (usually a MID) for the entity. Consider using GetWebrefEntityMid() in the adjacent webref-entities-util.h to read this.
  *   `mrf` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgument.t)`, *default:* `nil`) - MRF equivalent representations of this entity as a compound, one for each unique MRF representation. Populated for compounds. Each MRF expression contains a minimum FunctionCall structure wrapped in a nameless Argument without signals and range data. This is not meant to be directly usable as MRF, use QueryJoinToMeaningStructConverter to expand it into a usable form. References to entities are made as component_reference ArgumentValue. Each compound Mention of this entity (not all of its mentions need be compounds, some may be plain entity mentions) have one or more compound_value fields claiming these MRF expressions via their mrf_index. The compound_value has nested components, one for each unique component_reference.index in the MRF expression. The processing expectation is that each ArgumentValue which has a component_reference has its contents discarded and replaced with the MRF for the target entity and mention named by the compound_value.component. If the target is not a compound, the ArgumentValue becomes a simple mid value and the signals are taken from the entity and the mention. If the target is a compound itself, the expansion continues recursively. If the target is a compound with multiple MRFs, a cartesian product of recursive expansions may need to be produced. Along with the component_reference we also emit an example value, but this is purely for human consumption so it's easier to understand what the full compound is like. The processing expectation remains that the ArgumentValue containing a component_reference is completely discarded and rebuilt with the reference target value. If the target has more than one MRF expression, it's not specified which one will be used as an example, except that the choice is guaranteed to be deterministic from run to run.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotatedRelationship =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityRelationship.t())
            | nil,
          :annotations =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityAnnotations.t() | nil,
          :collections =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityCollections.t() | nil,
          :entityJoin => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityJoin.t() | nil,
          :id => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityId.t() | nil,
          :mrf =>
            list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgument.t())
            | nil
        }

  field(:annotatedRelationship,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityRelationship,
    type: :list
  )

  field(:annotations, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityAnnotations)

  field(:collections,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityCollections
  )

  field(:entityJoin, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityJoin)
  field(:id, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntityId)

  field(:mrf,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgument,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
