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

defmodule GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest do
  @moduledoc """
  Instance verify external sync settings request.

  ## Attributes

  *   `migrationType` (*type:* `String.t`, *default:* `nil`) - Optional. MigrationType configures the migration to use physical files or logical dump files. If not set, then the logical dump file configuration is used. Valid values are `LOGICAL` or `PHYSICAL`. Only applicable to MySQL.
  *   `mysqlSyncConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.MySqlSyncConfig.t`, *default:* `nil`) - Optional. MySQL-specific settings for start external sync.
  *   `selectedObjects` (*type:* `list(GoogleApi.SQLAdmin.V1.Model.ExternalSyncSelectedObject.t)`, *default:* `nil`) - Optional. Migrate only the specified objects from the source instance. If this field is empty, then migrate all objects.
  *   `syncMode` (*type:* `String.t`, *default:* `nil`) - External sync mode
  *   `syncParallelLevel` (*type:* `String.t`, *default:* `nil`) - Optional. Parallel level for initial data sync. Only applicable for PostgreSQL.
  *   `verifyConnectionOnly` (*type:* `boolean()`, *default:* `nil`) - Flag to enable verifying connection only
  *   `verifyReplicationOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. Flag to verify settings required by replication setup only
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :migrationType => String.t() | nil,
          :mysqlSyncConfig => GoogleApi.SQLAdmin.V1.Model.MySqlSyncConfig.t() | nil,
          :selectedObjects =>
            list(GoogleApi.SQLAdmin.V1.Model.ExternalSyncSelectedObject.t()) | nil,
          :syncMode => String.t() | nil,
          :syncParallelLevel => String.t() | nil,
          :verifyConnectionOnly => boolean() | nil,
          :verifyReplicationOnly => boolean() | nil
        }

  field(:migrationType)
  field(:mysqlSyncConfig, as: GoogleApi.SQLAdmin.V1.Model.MySqlSyncConfig)
  field(:selectedObjects, as: GoogleApi.SQLAdmin.V1.Model.ExternalSyncSelectedObject, type: :list)
  field(:syncMode)
  field(:syncParallelLevel)
  field(:verifyConnectionOnly)
  field(:verifyReplicationOnly)
end

defimpl Poison.Decoder,
  for: GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
