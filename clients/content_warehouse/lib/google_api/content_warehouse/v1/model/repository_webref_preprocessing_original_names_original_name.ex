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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingOriginalNamesOriginalName do
  @moduledoc """


  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - The total number of different sources from where this version of the original name comes from.
  *   `score` (*type:* `float()`, *default:* `nil`) - Score estimating how good this original name is: - some sources are considered more authoritative than others (e.g. KG) - a name found in more sources is better.
  *   `source` (*type:* `list(integer())`, *default:* `nil`) - The sources this name comes from.
  *   `text` (*type:* `String.t`, *default:* `nil`) - One original name version.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :score => float() | nil,
          :source => list(integer()) | nil,
          :text => String.t() | nil
        }

  field(:count)
  field(:score)
  field(:source, type: :list)
  field(:text)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingOriginalNamesOriginalName do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingOriginalNamesOriginalName.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefPreprocessingOriginalNamesOriginalName do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end