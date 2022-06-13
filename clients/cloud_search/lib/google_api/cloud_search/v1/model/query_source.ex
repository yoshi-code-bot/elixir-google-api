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

defmodule GoogleApi.CloudSearch.V1.Model.QuerySource do
  @moduledoc """
  List of sources that the user can search using the query API.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the data source.
  *   `operators` (*type:* `list(GoogleApi.CloudSearch.V1.Model.QueryOperator.t)`, *default:* `nil`) - List of all operators applicable for this source.
  *   `shortName` (*type:* `String.t`, *default:* `nil`) - A short name or alias for the source. This value can be used with the 'source' operator.
  *   `source` (*type:* `GoogleApi.CloudSearch.V1.Model.Source.t`, *default:* `nil`) - The name of the source
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :operators => list(GoogleApi.CloudSearch.V1.Model.QueryOperator.t()) | nil,
          :shortName => String.t() | nil,
          :source => GoogleApi.CloudSearch.V1.Model.Source.t() | nil
        }

  field(:displayName)
  field(:operators, as: GoogleApi.CloudSearch.V1.Model.QueryOperator, type: :list)
  field(:shortName)
  field(:source, as: GoogleApi.CloudSearch.V1.Model.Source)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.QuerySource do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.QuerySource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.QuerySource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
