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

defmodule GoogleApi.DataMigration.V1.Model.TableEntity do
  @moduledoc """
  Table's parent is a schema.

  ## Attributes

  *   `columns` (*type:* `list(GoogleApi.DataMigration.V1.Model.ColumnEntity.t)`, *default:* `nil`) - Table columns.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Comment associated with the table.
  *   `constraints` (*type:* `list(GoogleApi.DataMigration.V1.Model.ConstraintEntity.t)`, *default:* `nil`) - Table constraints.
  *   `customFeatures` (*type:* `map()`, *default:* `nil`) - Custom engine specific features.
  *   `indices` (*type:* `list(GoogleApi.DataMigration.V1.Model.IndexEntity.t)`, *default:* `nil`) - Table indices.
  *   `triggers` (*type:* `list(GoogleApi.DataMigration.V1.Model.TriggerEntity.t)`, *default:* `nil`) - Table triggers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columns => list(GoogleApi.DataMigration.V1.Model.ColumnEntity.t()) | nil,
          :comment => String.t() | nil,
          :constraints => list(GoogleApi.DataMigration.V1.Model.ConstraintEntity.t()) | nil,
          :customFeatures => map() | nil,
          :indices => list(GoogleApi.DataMigration.V1.Model.IndexEntity.t()) | nil,
          :triggers => list(GoogleApi.DataMigration.V1.Model.TriggerEntity.t()) | nil
        }

  field(:columns, as: GoogleApi.DataMigration.V1.Model.ColumnEntity, type: :list)
  field(:comment)
  field(:constraints, as: GoogleApi.DataMigration.V1.Model.ConstraintEntity, type: :list)
  field(:customFeatures, type: :map)
  field(:indices, as: GoogleApi.DataMigration.V1.Model.IndexEntity, type: :list)
  field(:triggers, as: GoogleApi.DataMigration.V1.Model.TriggerEntity, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.TableEntity do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.TableEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.TableEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
