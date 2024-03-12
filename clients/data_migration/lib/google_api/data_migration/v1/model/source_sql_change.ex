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

defmodule GoogleApi.DataMigration.V1.Model.SourceSqlChange do
  @moduledoc """
  Options to configure rule type SourceSqlChange. The rule is used to alter the sql code for database entities. The rule filter field can refer to one entity. The rule scope can be: StoredProcedure, Function, Trigger, View

  ## Attributes

  *   `sqlCode` (*type:* `String.t`, *default:* `nil`) - Required. Sql code for source (stored procedure, function, trigger or view)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sqlCode => String.t() | nil
        }

  field(:sqlCode)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.SourceSqlChange do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.SourceSqlChange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.SourceSqlChange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
