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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitReferencedBlock do
  @moduledoc """
  Data associate with the ReferencesBlock. Next available ID: 5

  ## Attributes

  *   `caption` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitTokenizedText.t`, *default:* `nil`) - Caption tokens - all text in the caption other than the block.
  *   `reference` (*type:* `String.t`, *default:* `nil`) - Reference used from the text to point to this figure.
  *   `title` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitTokenizedText.t`, *default:* `nil`) - Title tokens - these come from a block within a caption.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of figure (table, figure, etc.).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caption => GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitTokenizedText.t() | nil,
          :reference => String.t() | nil,
          :title => GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitTokenizedText.t() | nil,
          :type => String.t() | nil
        }

  field(:caption, as: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitTokenizedText)
  field(:reference)
  field(:title, as: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitTokenizedText)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitReferencedBlock do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitReferencedBlock.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSciencelitReferencedBlock do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end