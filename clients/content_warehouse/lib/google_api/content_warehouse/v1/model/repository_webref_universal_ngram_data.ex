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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData do
  @moduledoc """
  This proto is filled with n-gram data during model building.

  ## Attributes

  *   `idf` (*type:* `number()`, *default:* `nil`) - IDF of the n-gram.
  *   `pluralProb` (*type:* `number()`, *default:* `nil`) - Probability that the n-gram is a plural form of a word. This information is extracted from SAFT annotations of queries. See HasPluralProperty().
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :idf => number() | nil,
          :pluralProb => number() | nil
        }

  field(:idf)
  field(:pluralProb)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end