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

defmodule GoogleApi.Language.V2.Model.XPSTablesDatasetMetadata do
  @moduledoc """
  Metadata for a dataset used for AutoML Tables.

  ## Attributes

  *   `mlUseColumnId` (*type:* `integer()`, *default:* `nil`) - Id the column to split the table.
  *   `primaryTableSpec` (*type:* `GoogleApi.Language.V2.Model.XPSTableSpec.t`, *default:* `nil`) - Primary table.
  *   `targetColumnCorrelations` (*type:* `%{optional(String.t) => GoogleApi.Language.V2.Model.XPSCorrelationStats.t}`, *default:* `nil`) - (the column id : its CorrelationStats with target column).
  *   `targetColumnId` (*type:* `integer()`, *default:* `nil`) - Id of the primary table column that should be used as the training label.
  *   `weightColumnId` (*type:* `integer()`, *default:* `nil`) - Id of the primary table column that should be used as the weight column.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mlUseColumnId => integer() | nil,
          :primaryTableSpec => GoogleApi.Language.V2.Model.XPSTableSpec.t() | nil,
          :targetColumnCorrelations =>
            %{optional(String.t()) => GoogleApi.Language.V2.Model.XPSCorrelationStats.t()} | nil,
          :targetColumnId => integer() | nil,
          :weightColumnId => integer() | nil
        }

  field(:mlUseColumnId)
  field(:primaryTableSpec, as: GoogleApi.Language.V2.Model.XPSTableSpec)

  field(:targetColumnCorrelations, as: GoogleApi.Language.V2.Model.XPSCorrelationStats, type: :map)

  field(:targetColumnId)
  field(:weightColumnId)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V2.Model.XPSTablesDatasetMetadata do
  def decode(value, options) do
    GoogleApi.Language.V2.Model.XPSTablesDatasetMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V2.Model.XPSTablesDatasetMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
