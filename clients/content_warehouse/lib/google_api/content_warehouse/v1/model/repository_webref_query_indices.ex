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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefQueryIndices do
  @moduledoc """
  Identifies a set of NavBoost queries in the CompositeDoc. Typically these queries were collapsed by WebRef into a single query and they were treated by the annotator as equivalent. They all contain the same mentions (at the same offsets).

  ## Attributes

  *   `featuresIndex` (*type:* `list(integer())`, *default:* `nil`) - The set of indices in the NavBoostQuery::features() array that belong to the collapsed features.
  *   `queriesIndex` (*type:* `integer()`, *default:* `nil`) - The index of the query in NavBoostDocument::queries() array.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :featuresIndex => list(integer()) | nil,
          :queriesIndex => integer() | nil
        }

  field(:featuresIndex, type: :list)
  field(:queriesIndex)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefQueryIndices do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefQueryIndices.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefQueryIndices do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
