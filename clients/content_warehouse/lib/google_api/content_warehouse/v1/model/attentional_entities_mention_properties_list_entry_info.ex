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

defmodule GoogleApi.ContentWarehouse.V1.Model.AttentionalEntitiesMentionPropertiesListEntryInfo do
  @moduledoc """
  Contains information about how an entity was presented as part of a list.

  ## Attributes

  *   `index` (*type:* `String.t`, *default:* `nil`) - The index of the entity presented to the user. NOTE: Indexing starts from 0.
  *   `lexicalGroundingsId` (*type:* `String.t`, *default:* `nil`) - A string which uniquely identifies the list item this entity represents in the list. For example, consider the "OrderPizza" intent with the "size" slot: U: I want to order a pizza A: Sure. What size do you want: large, medium, or small? U: Gigantic The lexical_groundings_id can be "large" to identify the large item in the list. This lexical_groundings_id together with the semantic role fields (i.e., role.intent_id & role.role_id) can be used to match the nlp_semantic_parsing::LexicalGroundings::ValueTermType to utilize lexical grounding for i18n of static list selection items. Note that this field only needs to be populated when developers expect to provide lexical groundings for the list item this entity represents. Effectively, this field will be populated when this entity is published by ListPresentationFrame and the ::quality::dialog_manager::IntentStageSignals::FieldCandidate.lexical_groundings_id field is populated. See go/lpf-i18nv2 & go/taskstate-ae-sync for more details. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => String.t() | nil,
          :lexicalGroundingsId => String.t() | nil
        }

  field(:index)
  field(:lexicalGroundingsId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AttentionalEntitiesMentionPropertiesListEntryInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AttentionalEntitiesMentionPropertiesListEntryInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AttentionalEntitiesMentionPropertiesListEntryInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end