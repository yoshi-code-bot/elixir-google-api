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

defmodule GoogleApi.DataMigration.V1.Model.IntComparisonFilter do
  @moduledoc """
  Filter based on relation between source value and compare value of type integer in ConditionalColumnSetValue

  ## Attributes

  *   `value` (*type:* `String.t`, *default:* `nil`) - Required. Integer compare value to be used
  *   `valueComparison` (*type:* `String.t`, *default:* `nil`) - Required. Relation between source value and compare value
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :value => String.t() | nil,
          :valueComparison => String.t() | nil
        }

  field(:value)
  field(:valueComparison)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.IntComparisonFilter do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.IntComparisonFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.IntComparisonFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end