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

defmodule GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  @moduledoc """


  ## Attributes

  *   `allowLargeResults` (*type:* `boolean()`, *default:* `false`) - [Optional] If true and query uses legacy SQL dialect, allows the query to produce arbitrarily large result tables at a slight cost in performance. Requires destinationTable to be set. For standard SQL queries, this flag is ignored and large results are always allowed. However, you must still set destinationTable when result size exceeds the allowed maximum response size.
  *   `clustering` (*type:* `GoogleApi.BigQuery.V2.Model.Clustering.t`, *default:* `nil`) - [Beta] Clustering specification for the destination table. Must be specified with time-based partitioning, data in the table will be first partitioned and subsequently clustered.
  *   `connectionProperties` (*type:* `list(GoogleApi.BigQuery.V2.Model.ConnectionProperty.t)`, *default:* `nil`) - Connection properties.
  *   `createDisposition` (*type:* `String.t`, *default:* `nil`) - [Optional] Specifies whether the job is allowed to create new tables. The following values are supported: CREATE_IF_NEEDED: If the table does not exist, BigQuery creates the table. CREATE_NEVER: The table must already exist. If it does not, a 'notFound' error is returned in the job result. The default value is CREATE_IF_NEEDED. Creation, truncation and append actions occur as one atomic update upon job completion.
  *   `defaultDataset` (*type:* `GoogleApi.BigQuery.V2.Model.DatasetReference.t`, *default:* `nil`) - [Optional] Specifies the default dataset to use for unqualified table names in the query. Note that this does not alter behavior of unqualified dataset names.
  *   `destinationEncryptionConfiguration` (*type:* `GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t`, *default:* `nil`) - Custom encryption configuration (e.g., Cloud KMS keys).
  *   `destinationTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - [Optional] Describes the table where the query results should be stored. If not present, a new table will be created to store the results. This property must be set for large results that exceed the maximum response size.
  *   `flattenResults` (*type:* `boolean()`, *default:* `true`) - [Optional] If true and query uses legacy SQL dialect, flattens all nested and repeated fields in the query results. allowLargeResults must be true if this is set to false. For standard SQL queries, this flag is ignored and results are never flattened.
  *   `maximumBillingTier` (*type:* `integer()`, *default:* `1`) - [Optional] Limits the billing tier for this job. Queries that have resource usage beyond this tier will fail (without incurring a charge). If unspecified, this will be set to your project default.
  *   `maximumBytesBilled` (*type:* `String.t`, *default:* `nil`) - [Optional] Limits the bytes billed for this job. Queries that will have bytes billed beyond this limit will fail (without incurring a charge). If unspecified, this will be set to your project default.
  *   `parameterMode` (*type:* `String.t`, *default:* `nil`) - Standard SQL only. Set to POSITIONAL to use positional (?) query parameters or to NAMED to use named (@myparam) query parameters in this query.
  *   `preserveNulls` (*type:* `boolean()`, *default:* `nil`) - [Deprecated] This property is deprecated.
  *   `priority` (*type:* `String.t`, *default:* `nil`) - [Optional] Specifies a priority for the query. Possible values include INTERACTIVE and BATCH. The default value is INTERACTIVE.
  *   `query` (*type:* `String.t`, *default:* `nil`) - [Required] SQL query text to execute. The useLegacySql field can be used to indicate whether the query uses legacy SQL or standard SQL.
  *   `queryParameters` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryParameter.t)`, *default:* `nil`) - Query parameters for standard SQL queries.
  *   `rangePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.RangePartitioning.t`, *default:* `nil`) - [TrustedTester] Range partitioning specification for this table. Only one of timePartitioning and rangePartitioning should be specified.
  *   `schemaUpdateOptions` (*type:* `list(String.t)`, *default:* `nil`) - Allows the schema of the destination table to be updated as a side effect of the query job. Schema update options are supported in two cases: when writeDisposition is WRITE_APPEND; when writeDisposition is WRITE_TRUNCATE and the destination table is a partition of a table, specified by partition decorators. For normal tables, WRITE_TRUNCATE will always overwrite the schema. One or more of the following values are specified: ALLOW_FIELD_ADDITION: allow adding a nullable field to the schema. ALLOW_FIELD_RELAXATION: allow relaxing a required field in the original schema to nullable.
  *   `tableDefinitions` (*type:* `%{optional(String.t) => GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration.t}`, *default:* `nil`) - [Optional] If querying an external data source outside of BigQuery, describes the data format, location and other properties of the data source. By defining these properties, the data source can then be queried as if it were a standard BigQuery table.
  *   `timePartitioning` (*type:* `GoogleApi.BigQuery.V2.Model.TimePartitioning.t`, *default:* `nil`) - Time-based partitioning specification for the destination table. Only one of timePartitioning and rangePartitioning should be specified.
  *   `useLegacySql` (*type:* `boolean()`, *default:* `true`) - Specifies whether to use BigQuery's legacy SQL dialect for this query. The default value is true. If set to false, the query will use BigQuery's standard SQL: https://cloud.google.com/bigquery/sql-reference/ When useLegacySql is set to false, the value of flattenResults is ignored; query will be run as if flattenResults is false.
  *   `useQueryCache` (*type:* `boolean()`, *default:* `true`) - [Optional] Whether to look for the result in the query cache. The query cache is a best-effort cache that will be flushed whenever tables in the query are modified. Moreover, the query cache is only available when a query does not have a destination table specified. The default value is true.
  *   `userDefinedFunctionResources` (*type:* `list(GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.t)`, *default:* `nil`) - Describes user-defined function resources used in the query.
  *   `writeDisposition` (*type:* `String.t`, *default:* `nil`) - [Optional] Specifies the action that occurs if the destination table already exists. The following values are supported: WRITE_TRUNCATE: If the table already exists, BigQuery overwrites the table data and uses the schema from the query result. WRITE_APPEND: If the table already exists, BigQuery appends the data to the table. WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Creation, truncation and append actions occur as one atomic update upon job completion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowLargeResults => boolean() | nil,
          :clustering => GoogleApi.BigQuery.V2.Model.Clustering.t() | nil,
          :connectionProperties => list(GoogleApi.BigQuery.V2.Model.ConnectionProperty.t()) | nil,
          :createDisposition => String.t() | nil,
          :defaultDataset => GoogleApi.BigQuery.V2.Model.DatasetReference.t() | nil,
          :destinationEncryptionConfiguration =>
            GoogleApi.BigQuery.V2.Model.EncryptionConfiguration.t() | nil,
          :destinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :flattenResults => boolean() | nil,
          :maximumBillingTier => integer() | nil,
          :maximumBytesBilled => String.t() | nil,
          :parameterMode => String.t() | nil,
          :preserveNulls => boolean() | nil,
          :priority => String.t() | nil,
          :query => String.t() | nil,
          :queryParameters => list(GoogleApi.BigQuery.V2.Model.QueryParameter.t()) | nil,
          :rangePartitioning => GoogleApi.BigQuery.V2.Model.RangePartitioning.t() | nil,
          :schemaUpdateOptions => list(String.t()) | nil,
          :tableDefinitions =>
            %{optional(String.t()) => GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration.t()}
            | nil,
          :timePartitioning => GoogleApi.BigQuery.V2.Model.TimePartitioning.t() | nil,
          :useLegacySql => boolean() | nil,
          :useQueryCache => boolean() | nil,
          :userDefinedFunctionResources =>
            list(GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource.t()) | nil,
          :writeDisposition => String.t() | nil
        }

  field(:allowLargeResults)
  field(:clustering, as: GoogleApi.BigQuery.V2.Model.Clustering)
  field(:connectionProperties, as: GoogleApi.BigQuery.V2.Model.ConnectionProperty, type: :list)
  field(:createDisposition)
  field(:defaultDataset, as: GoogleApi.BigQuery.V2.Model.DatasetReference)

  field(:destinationEncryptionConfiguration,
    as: GoogleApi.BigQuery.V2.Model.EncryptionConfiguration
  )

  field(:destinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:flattenResults)
  field(:maximumBillingTier)
  field(:maximumBytesBilled)
  field(:parameterMode)
  field(:preserveNulls)
  field(:priority)
  field(:query)
  field(:queryParameters, as: GoogleApi.BigQuery.V2.Model.QueryParameter, type: :list)
  field(:rangePartitioning, as: GoogleApi.BigQuery.V2.Model.RangePartitioning)
  field(:schemaUpdateOptions, type: :list)
  field(:tableDefinitions, as: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration, type: :map)
  field(:timePartitioning, as: GoogleApi.BigQuery.V2.Model.TimePartitioning)
  field(:useLegacySql)
  field(:useQueryCache)

  field(:userDefinedFunctionResources,
    as: GoogleApi.BigQuery.V2.Model.UserDefinedFunctionResource,
    type: :list
  )

  field(:writeDisposition)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobConfigurationQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobConfigurationQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
