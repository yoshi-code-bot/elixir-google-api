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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSaftEntityInfo do
  @moduledoc """
  Saft named-entities info for a given topic.

  ## Attributes

  *   `canonicalEntityName` (*type:* `String.t`, *default:* `nil`) - Representative canonical name for the entity.
  *   `entitySalience` (*type:* `float()`, *default:* `nil`) - Score indicating the saliency (centrality) of this entity to the original_text.
  *   `entityTypeName` (*type:* `String.t`, *default:* `nil`) - The type name, like "/saft/person", "/saft/art". See README.entity-types for the inventory of SAFT type tags.
  *   `mentionText` (*type:* `String.t`, *default:* `nil`) - Representative entity name mention extracted from original_text.
  *   `mentionType` (*type:* `String.t`, *default:* `nil`) - SAFT Mention type.
  *   `mid` (*type:* `String.t`, *default:* `nil`) - Freebase MID for entity if this the saft entity corresponds to a Webref KG mid. This field is not always populated and is taken from FREEBASE_MID mid in EntityProfile in the saft entity annotation.
  *   `originalText` (*type:* `String.t`, *default:* `nil`) - The original input text (e.g. the anchor text) where the saft entity annotation was run on.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canonicalEntityName => String.t() | nil,
          :entitySalience => float() | nil,
          :entityTypeName => String.t() | nil,
          :mentionText => String.t() | nil,
          :mentionType => String.t() | nil,
          :mid => String.t() | nil,
          :originalText => String.t() | nil
        }

  field(:canonicalEntityName)
  field(:entitySalience)
  field(:entityTypeName)
  field(:mentionText)
  field(:mentionType)
  field(:mid)
  field(:originalText)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSaftEntityInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSaftEntityInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSaftEntityInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end