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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageCombinationLanguage do
  @moduledoc """
  Weighted language

  ## Attributes

  *   `bcp47Tag` (*type:* `String.t`, *default:* `nil`) - Bcp47 language code. Note, this is not the same as OceanCode used by goodoc::Document.
  *   `weight` (*type:* `number()`, *default:* `nil`) - Weight of language. This specifies how likely it is to see the language in the input text. The values don't have to add up to 1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bcp47Tag => String.t() | nil,
          :weight => number() | nil
        }

  field(:bcp47Tag)
  field(:weight)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageCombinationLanguage do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageCombinationLanguage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocLanguageCombinationLanguage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end