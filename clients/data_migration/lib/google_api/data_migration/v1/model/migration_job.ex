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

defmodule GoogleApi.DataMigration.V1.Model.MigrationJob do
  @moduledoc """
  Represents a Database Migration Service migration job object.

  ## Attributes

  *   `cmekKeyName` (*type:* `String.t`, *default:* `nil`) - The CMEK (customer-managed encryption key) fully qualified key name used for the migration job. This field supports all migration jobs types except for: * Mysql to Mysql (use the cmek field in the cloudsql connection profile instead). * PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in the alloydb connection profile instead). Each Cloud CMEK key has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]
  *   `conversionWorkspace` (*type:* `GoogleApi.DataMigration.V1.Model.ConversionWorkspaceInfo.t`, *default:* `nil`) - The conversion workspace used by the migration.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the migration job resource was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  *   `destination` (*type:* `String.t`, *default:* `nil`) - Required. The resource name (URI) of the destination connection profile.
  *   `destinationDatabase` (*type:* `GoogleApi.DataMigration.V1.Model.DatabaseType.t`, *default:* `nil`) - The database engine type and provider of the destination.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The migration job display name.
  *   `dumpFlags` (*type:* `GoogleApi.DataMigration.V1.Model.DumpFlags.t`, *default:* `nil`) - The initial dump flags. This field and the "dump_path" field are mutually exclusive.
  *   `dumpPath` (*type:* `String.t`, *default:* `nil`) - The path to the dump file in Google Cloud Storage, in the format: (gs://[BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are mutually exclusive.
  *   `dumpType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of the data dump. Supported for MySQL to CloudSQL for MySQL migrations only.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. The duration of the migration job (in seconds). A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If the migration job is completed, the time when it was completed.
  *   `error` (*type:* `GoogleApi.DataMigration.V1.Model.Status.t`, *default:* `nil`) - Output only. The error details in case of state FAILED.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - This field can be used to select the entities to migrate as part of the migration job. It uses AIP-160 notation to select a subset of the entities configured on the associated conversion-workspace. This field should not be set on migration-jobs that are not associated with a conversion workspace.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The resource labels for migration job to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name (URI) of this migration job resource, in the form of: projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  *   `objectsConfig` (*type:* `GoogleApi.DataMigration.V1.Model.MigrationJobObjectsConfig.t`, *default:* `nil`) - Optional. The objects that need to be migrated.
  *   `oracleToPostgresConfig` (*type:* `GoogleApi.DataMigration.V1.Model.OracleToPostgresConfig.t`, *default:* `nil`) - Configuration for heterogeneous **Oracle to Cloud SQL for PostgreSQL** and **Oracle to AlloyDB for PostgreSQL** migrations.
  *   `performanceConfig` (*type:* `GoogleApi.DataMigration.V1.Model.PerformanceConfig.t`, *default:* `nil`) - Optional. Data dump parallelism settings used by the migration.
  *   `phase` (*type:* `String.t`, *default:* `nil`) - Output only. The current migration job phase.
  *   `reverseSshConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity.t`, *default:* `nil`) - The details needed to communicate to the source over Reverse SSH tunnel connectivity.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Required. The resource name (URI) of the source connection profile.
  *   `sourceDatabase` (*type:* `GoogleApi.DataMigration.V1.Model.DatabaseType.t`, *default:* `nil`) - The database engine type and provider of the source.
  *   `sqlserverHomogeneousMigrationJobConfig` (*type:* `GoogleApi.DataMigration.V1.Model.SqlServerHomogeneousMigrationJobConfig.t`, *default:* `nil`) - Optional. Configuration for SQL Server homogeneous migration.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The current migration job state.
  *   `staticIpConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.StaticIpConnectivity.t`, *default:* `nil`) - static ip connectivity data (default, no additional details needed).
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The migration job type.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the migration job resource was last updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  *   `vpcPeeringConnectivity` (*type:* `GoogleApi.DataMigration.V1.Model.VpcPeeringConnectivity.t`, *default:* `nil`) - The details of the VPC network that the source database is located in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cmekKeyName => String.t() | nil,
          :conversionWorkspace =>
            GoogleApi.DataMigration.V1.Model.ConversionWorkspaceInfo.t() | nil,
          :createTime => DateTime.t() | nil,
          :destination => String.t() | nil,
          :destinationDatabase => GoogleApi.DataMigration.V1.Model.DatabaseType.t() | nil,
          :displayName => String.t() | nil,
          :dumpFlags => GoogleApi.DataMigration.V1.Model.DumpFlags.t() | nil,
          :dumpPath => String.t() | nil,
          :dumpType => String.t() | nil,
          :duration => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :error => GoogleApi.DataMigration.V1.Model.Status.t() | nil,
          :filter => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :objectsConfig => GoogleApi.DataMigration.V1.Model.MigrationJobObjectsConfig.t() | nil,
          :oracleToPostgresConfig =>
            GoogleApi.DataMigration.V1.Model.OracleToPostgresConfig.t() | nil,
          :performanceConfig => GoogleApi.DataMigration.V1.Model.PerformanceConfig.t() | nil,
          :phase => String.t() | nil,
          :reverseSshConnectivity =>
            GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity.t() | nil,
          :source => String.t() | nil,
          :sourceDatabase => GoogleApi.DataMigration.V1.Model.DatabaseType.t() | nil,
          :sqlserverHomogeneousMigrationJobConfig =>
            GoogleApi.DataMigration.V1.Model.SqlServerHomogeneousMigrationJobConfig.t() | nil,
          :state => String.t() | nil,
          :staticIpConnectivity =>
            GoogleApi.DataMigration.V1.Model.StaticIpConnectivity.t() | nil,
          :type => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :vpcPeeringConnectivity =>
            GoogleApi.DataMigration.V1.Model.VpcPeeringConnectivity.t() | nil
        }

  field(:cmekKeyName)
  field(:conversionWorkspace, as: GoogleApi.DataMigration.V1.Model.ConversionWorkspaceInfo)
  field(:createTime, as: DateTime)
  field(:destination)
  field(:destinationDatabase, as: GoogleApi.DataMigration.V1.Model.DatabaseType)
  field(:displayName)
  field(:dumpFlags, as: GoogleApi.DataMigration.V1.Model.DumpFlags)
  field(:dumpPath)
  field(:dumpType)
  field(:duration)
  field(:endTime, as: DateTime)
  field(:error, as: GoogleApi.DataMigration.V1.Model.Status)
  field(:filter)
  field(:labels, type: :map)
  field(:name)
  field(:objectsConfig, as: GoogleApi.DataMigration.V1.Model.MigrationJobObjectsConfig)
  field(:oracleToPostgresConfig, as: GoogleApi.DataMigration.V1.Model.OracleToPostgresConfig)
  field(:performanceConfig, as: GoogleApi.DataMigration.V1.Model.PerformanceConfig)
  field(:phase)
  field(:reverseSshConnectivity, as: GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity)
  field(:source)
  field(:sourceDatabase, as: GoogleApi.DataMigration.V1.Model.DatabaseType)

  field(:sqlserverHomogeneousMigrationJobConfig,
    as: GoogleApi.DataMigration.V1.Model.SqlServerHomogeneousMigrationJobConfig
  )

  field(:state)
  field(:staticIpConnectivity, as: GoogleApi.DataMigration.V1.Model.StaticIpConnectivity)
  field(:type)
  field(:updateTime, as: DateTime)
  field(:vpcPeeringConnectivity, as: GoogleApi.DataMigration.V1.Model.VpcPeeringConnectivity)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.MigrationJob do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.MigrationJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.MigrationJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
