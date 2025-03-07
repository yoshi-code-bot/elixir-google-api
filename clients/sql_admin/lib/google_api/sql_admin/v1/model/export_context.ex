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

defmodule GoogleApi.SQLAdmin.V1.Model.ExportContext do
  @moduledoc """
  Database instance export context.

  ## Attributes

  *   `bakExportOptions` (*type:* `GoogleApi.SQLAdmin.V1.Model.ExportContextBakExportOptions.t`, *default:* `nil`) - Options for exporting BAK files (SQL Server-only)
  *   `csvExportOptions` (*type:* `GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions.t`, *default:* `nil`) - Options for exporting data as CSV. `MySQL` and `PostgreSQL` instances only.
  *   `databases` (*type:* `list(String.t)`, *default:* `nil`) - Databases to be exported. `MySQL instances:` If `fileType` is `SQL` and no database is specified, all databases are exported, except for the `mysql` system database. If `fileType` is `CSV`, you can specify one database, either by using this property or by using the `csvExportOptions.selectQuery` property, which takes precedence over this property. `PostgreSQL instances:` If you don't specify a database by name, all user databases in the instance are exported. This excludes system databases and Cloud SQL databases used to manage internal operations. Exporting all user databases is only available for directory-formatted parallel export. If `fileType` is `CSV`, this database must match the one specified in the `csvExportOptions.selectQuery` property. `SQL Server instances:` You must specify one database to be exported, and the `fileType` must be `BAK`.
  *   `fileType` (*type:* `String.t`, *default:* `nil`) - The file type for the specified uri.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always `sql#exportContext`.
  *   `offload` (*type:* `boolean()`, *default:* `nil`) - Option for export offload.
  *   `sqlExportOptions` (*type:* `GoogleApi.SQLAdmin.V1.Model.ExportContextSqlExportOptions.t`, *default:* `nil`) - Options for exporting data as SQL statements.
  *   `tdeExportOptions` (*type:* `GoogleApi.SQLAdmin.V1.Model.ExportContextTdeExportOptions.t`, *default:* `nil`) - Optional. Export parameters specific to SQL Server TDE certificates
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The path to the file in Google Cloud Storage where the export will be stored. The URI is in the form `gs://bucketName/fileName`. If the file already exists, the request succeeds, but the operation fails. If `fileType` is `SQL` and the filename ends with .gz, the contents are compressed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bakExportOptions =>
            GoogleApi.SQLAdmin.V1.Model.ExportContextBakExportOptions.t() | nil,
          :csvExportOptions =>
            GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions.t() | nil,
          :databases => list(String.t()) | nil,
          :fileType => String.t() | nil,
          :kind => String.t() | nil,
          :offload => boolean() | nil,
          :sqlExportOptions =>
            GoogleApi.SQLAdmin.V1.Model.ExportContextSqlExportOptions.t() | nil,
          :tdeExportOptions =>
            GoogleApi.SQLAdmin.V1.Model.ExportContextTdeExportOptions.t() | nil,
          :uri => String.t() | nil
        }

  field(:bakExportOptions, as: GoogleApi.SQLAdmin.V1.Model.ExportContextBakExportOptions)
  field(:csvExportOptions, as: GoogleApi.SQLAdmin.V1.Model.ExportContextCsvExportOptions)
  field(:databases, type: :list)
  field(:fileType)
  field(:kind)
  field(:offload)
  field(:sqlExportOptions, as: GoogleApi.SQLAdmin.V1.Model.ExportContextSqlExportOptions)
  field(:tdeExportOptions, as: GoogleApi.SQLAdmin.V1.Model.ExportContextTdeExportOptions)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1.Model.ExportContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.ExportContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1.Model.ExportContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
