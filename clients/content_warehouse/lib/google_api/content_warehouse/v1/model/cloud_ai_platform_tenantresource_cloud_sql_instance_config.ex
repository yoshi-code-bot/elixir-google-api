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

defmodule GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceCloudSqlInstanceConfig do
  @moduledoc """
  The identity to configure a CloudSQL instance provisioned via SLM Terraform.

  ## Attributes

  *   `cloudSqlInstanceConnectionName` (*type:* `String.t`, *default:* `nil`) - Output only. The CloudSQL instance connection name.
  *   `cloudSqlInstanceName` (*type:* `String.t`, *default:* `nil`) - Input/Output [Optional]. The CloudSQL instance name within SLM instance. If not set, a random UUIC will be generated as instance name.
  *   `kmsKeyReference` (*type:* `String.t`, *default:* `nil`) - Input [Optional]. The KMS key name or the KMS grant name used for CMEK encryption. Only set this field when provisioning new CloudSQL instances. For existing CloudSQL instances, this field will be ignored because CMEK re-encryption is not supported.
  *   `mdbRolesForCorpAccess` (*type:* `list(String.t)`, *default:* `nil`) - Input [Optional]. MDB roles for corp access to CloudSQL instance.
  *   `slmInstanceName` (*type:* `String.t`, *default:* `nil`) - Output only. The SLM instance's full resource name.
  *   `slmInstanceTemplate` (*type:* `String.t`, *default:* `nil`) - Input [Required]. The SLM instance template to provision CloudSQL.
  *   `slmInstanceType` (*type:* `String.t`, *default:* `nil`) - Input [Required]. The SLM instance type to provision CloudSQL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cloudSqlInstanceConnectionName => String.t() | nil,
          :cloudSqlInstanceName => String.t() | nil,
          :kmsKeyReference => String.t() | nil,
          :mdbRolesForCorpAccess => list(String.t()) | nil,
          :slmInstanceName => String.t() | nil,
          :slmInstanceTemplate => String.t() | nil,
          :slmInstanceType => String.t() | nil
        }

  field(:cloudSqlInstanceConnectionName)
  field(:cloudSqlInstanceName)
  field(:kmsKeyReference)
  field(:mdbRolesForCorpAccess, type: :list)
  field(:slmInstanceName)
  field(:slmInstanceTemplate)
  field(:slmInstanceType)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceCloudSqlInstanceConfig do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceCloudSqlInstanceConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceCloudSqlInstanceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
