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

defmodule GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfig do
  @moduledoc """
  The configuration for a spanner database provisioning. Next ID: 8

  ## Attributes

  *   `createDatabaseOptions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions.t`, *default:* `nil`) - Input [Optional]. The options to create a spanner database. Note: give the right options to ensure the right KMS key access audit logging and AxT logging in expected logging category.
  *   `kmsKeyReference` (*type:* `String.t`, *default:* `nil`) - Input [Optional]. The KMS key name or the KMS grant name used for CMEK encryption. Only set this field when provisioning new Infra Spanner databases. For existing Infra Spanner databases, this field will be ignored because CMEK re-encryption is not supported. For example, projects//locations//keyRings//cryptoKeys/
  *   `sdlBundlePath` (*type:* `String.t`, *default:* `nil`) - Input [Required]. The file path to the spanner SDL bundle.
  *   `spannerBorgServiceAccount` (*type:* `String.t`, *default:* `nil`) - Input [Optional]. The spanner borg service account for delegating the kms key to. For example, spanner-infra-cmek-nonprod@system.gserviceaccount.com, for the nonprod universe.
  *   `spannerLocalNamePrefix` (*type:* `String.t`, *default:* `nil`) - 
  *   `spannerNamespace` (*type:* `String.t`, *default:* `nil`) - 
  *   `spannerUniverse` (*type:* `String.t`, *default:* `nil`) - Input [Required]. Every database in Spanner can be identified by the following path name: /span//:
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createDatabaseOptions =>
            GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions.t()
            | nil,
          :kmsKeyReference => String.t() | nil,
          :sdlBundlePath => String.t() | nil,
          :spannerBorgServiceAccount => String.t() | nil,
          :spannerLocalNamePrefix => String.t() | nil,
          :spannerNamespace => String.t() | nil,
          :spannerUniverse => String.t() | nil
        }

  field(:createDatabaseOptions,
    as:
      GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfigCreateDatabaseOptions
  )

  field(:kmsKeyReference)
  field(:sdlBundlePath)
  field(:spannerBorgServiceAccount)
  field(:spannerLocalNamePrefix)
  field(:spannerNamespace)
  field(:spannerUniverse)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfig do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceInfraSpannerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
