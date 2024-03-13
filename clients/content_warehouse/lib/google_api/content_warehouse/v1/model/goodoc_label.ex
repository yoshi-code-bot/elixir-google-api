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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocLabel do
  @moduledoc """
  Label aggregates all kinds of optional characteristics of page elements.

  ## Attributes

  *   `AnchorLabel` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoodocAnchorLabel.t)`, *default:* `nil`) - AnchorLabel identifies a link target.
  *   `BreakLabel` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocBreakLabel.t`, *default:* `nil`) - 
  *   `CharLabel` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocCharLabel.t`, *default:* `nil`) - CharLabel is specifically intended for symbols
  *   `LanguageLabel` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageLabel.t)`, *default:* `nil`) - Languages used in the element (page, block, paragraph or word). Ordered by dominant-language first. Note: content scanjobs processed by the garbage_text_detector before CL 9223538 (Dec. 2008) have LanguageLabels in arbitrary order (within Page and Block elements) -- the confidence value should be inspected to find the dominant language guess for these, rather than just taking the first.
  *   `SemanticLabel` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabel.t`, *default:* `nil`) - SemanticLabel is defined in goodoc-semantics.proto, it allows rich annotation of content, identifying the nature of page elements.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :AnchorLabel => list(GoogleApi.ContentWarehouse.V1.Model.GoodocAnchorLabel.t()) | nil,
          :BreakLabel => GoogleApi.ContentWarehouse.V1.Model.GoodocBreakLabel.t() | nil,
          :CharLabel => GoogleApi.ContentWarehouse.V1.Model.GoodocCharLabel.t() | nil,
          :LanguageLabel =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageLabel.t()) | nil,
          :SemanticLabel => GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabel.t() | nil
        }

  field(:AnchorLabel, as: GoogleApi.ContentWarehouse.V1.Model.GoodocAnchorLabel, type: :list)
  field(:BreakLabel, as: GoogleApi.ContentWarehouse.V1.Model.GoodocBreakLabel)
  field(:CharLabel, as: GoogleApi.ContentWarehouse.V1.Model.GoodocCharLabel)
  field(:LanguageLabel, as: GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageLabel, type: :list)
  field(:SemanticLabel, as: GoogleApi.ContentWarehouse.V1.Model.GoodocSemanticLabel)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocLabel do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocLabel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocLabel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end