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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity do
  @moduledoc """
  A message encapsulating all "/collection/personal_memory" annotations from QRef annotator. These annotations are present in personal_summary_node_child proto field of input QRefAnnotation proto. NEXT ID TO USE: 5

  ## Attributes

  *   `attributeId` (*type:* `String.t`, *default:* `nil`) - Attribute ID of a personal_summary_node_child.
  *   `entityRelationship` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntityEntityRelationship.t)`, *default:* `nil`) - 
  *   `freebaseMid` (*type:* `String.t`, *default:* `nil`) - The mid of the entity in freebase associated with this span.
  *   `personalEntityChild` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity.t)`, *default:* `nil`) - Every PersonalEntity might itself rescursively contain related Personal Entities, e.g. for, "my father's mother" a parent Personal Entity for 'Mother()' contains a child Personal Entity of the form 'Mother(Myself)'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeId => String.t() | nil,
          :entityRelationship =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntityEntityRelationship.t()
            )
            | nil,
          :freebaseMid => String.t() | nil,
          :personalEntityChild =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity.t()
            )
            | nil
        }

  field(:attributeId)

  field(:entityRelationship,
    as:
      GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntityEntityRelationship,
    type: :list
  )

  field(:freebaseMid)

  field(:personalEntityChild,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryPersonalEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end