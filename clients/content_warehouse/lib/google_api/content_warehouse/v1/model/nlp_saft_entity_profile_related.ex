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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileRelated do
  @moduledoc """
  Related entities.

  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - Number of occurrences.
  *   `inverse` (*type:* `boolean()`, *default:* `nil`) - Inverse relations can be marked in a bidirectional graph.
  *   `relationId` (*type:* `integer()`, *default:* `nil`) - Optional integer id for the relation.
  *   `relationIdentifier` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSaftIdentifier.t`, *default:* `nil`) - Optional external identifier for the relation.
  *   `score` (*type:* `number()`, *default:* `nil`) - Score for related entity, i.e. p(e->r | e).
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - Profile id of related entity.
  *   `targetIdentifier` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSaftIdentifier.t`, *default:* `nil`) - Optional external identifier for the target entity.
  *   `targetName` (*type:* `String.t`, *default:* `nil`) - Name of related entity.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of relation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :inverse => boolean() | nil,
          :relationId => integer() | nil,
          :relationIdentifier => GoogleApi.ContentWarehouse.V1.Model.NlpSaftIdentifier.t() | nil,
          :score => number() | nil,
          :targetId => String.t() | nil,
          :targetIdentifier => GoogleApi.ContentWarehouse.V1.Model.NlpSaftIdentifier.t() | nil,
          :targetName => String.t() | nil,
          :type => String.t() | nil
        }

  field(:count)
  field(:inverse)
  field(:relationId)
  field(:relationIdentifier, as: GoogleApi.ContentWarehouse.V1.Model.NlpSaftIdentifier)
  field(:score)
  field(:targetId)
  field(:targetIdentifier, as: GoogleApi.ContentWarehouse.V1.Model.NlpSaftIdentifier)
  field(:targetName)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileRelated do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileRelated.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftEntityProfileRelated do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
