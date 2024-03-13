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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlxDataSchemaMention do
  @moduledoc """
  A mention of an entity. A single entity might be mentioned multiple times.

  ## Attributes

  *   `bytes` (*type:* `GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerSpan.t`, *default:* `nil`) - The bytes in this mention.
  *   `document` (*type:* `GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerIndex.t`, *default:* `nil`) - The document that contains this mention.
  *   `entity` (*type:* `GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerIndex.t`, *default:* `nil`) - The entity that this mention refers to.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Mention kind, typically 'referential', 'attributive', or 'modifier'.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The mention text itself. Must contain valid UTF-8.
  *   `tokens` (*type:* `GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerSpan.t`, *default:* `nil`) - The token(s) in this mention. This may not be present, or have zero length if representing an implicit mention, as in the prodrop case.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Mention type, typically 'named' (for name mentions) or 'nominal'. More types include 'pronominal', 'conjoined' for conjoined mention construction, and 'non-referential' for non-referential pronoun mentions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytes => GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerSpan.t() | nil,
          :document => GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerIndex.t() | nil,
          :entity => GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerIndex.t() | nil,
          :kind => String.t() | nil,
          :text => String.t() | nil,
          :tokens => GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerSpan.t() | nil,
          :type => String.t() | nil
        }

  field(:bytes, as: GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerSpan)
  field(:document, as: GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerIndex)
  field(:entity, as: GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerIndex)
  field(:kind)
  field(:text)
  field(:tokens, as: GoogleApi.ContentWarehouse.V1.Model.MultiscalePointerSpan)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlxDataSchemaMention do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlxDataSchemaMention.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlxDataSchemaMention do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
