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

defmodule GoogleApi.MigrationCenter.V1.Model.PostgreSqlProperty do
  @moduledoc """
  PostgreSql property.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Required. The property is enabled.
  *   `numericValue` (*type:* `String.t`, *default:* `nil`) - Required. The property numeric value.
  *   `property` (*type:* `String.t`, *default:* `nil`) - Required. The property name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :numericValue => String.t() | nil,
          :property => String.t() | nil
        }

  field(:enabled)
  field(:numericValue)
  field(:property)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.PostgreSqlProperty do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.PostgreSqlProperty.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.PostgreSqlProperty do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
