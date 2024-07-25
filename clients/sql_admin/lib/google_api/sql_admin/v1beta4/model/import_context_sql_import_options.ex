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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptions do
  @moduledoc """
  Optional. Options for importing data from SQL statements.

  ## Attributes

  *   `parallel` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether or not the import should be parallel.
  *   `postgresImportOptions` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptionsPostgresImportOptions.t`, *default:* `nil`) - Optional. Options for importing from a Cloud SQL for PostgreSQL instance.
  *   `threads` (*type:* `integer()`, *default:* `nil`) - Optional. The number of threads to use for parallel import.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parallel => boolean() | nil,
          :postgresImportOptions =>
            GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptionsPostgresImportOptions.t()
            | nil,
          :threads => integer() | nil
        }

  field(:parallel)

  field(:postgresImportOptions,
    as: GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptionsPostgresImportOptions
  )

  field(:threads)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptions do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.ImportContextSqlImportOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
