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

defmodule GoogleApi.DataMigration.V1.Model.SqlIpConfig do
  @moduledoc """
  IP Management configuration.

  ## Attributes

  *   `allocatedIpRange` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the allocated IP address range for the private IP Cloud SQL instance. This name refers to an already allocated IP range address. If set, the instance IP address will be created in the allocated range. Note that this IP address range can't be modified after the instance is created. If you change the VPC when configuring connectivity settings for the migration job, this field is not relevant.
  *   `authorizedNetworks` (*type:* `list(GoogleApi.DataMigration.V1.Model.SqlAclEntry.t)`, *default:* `nil`) - The list of external networks that are allowed to connect to the instance using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known as 'slash' notation (e.g. `192.168.100.0/24`).
  *   `enableIpv4` (*type:* `boolean()`, *default:* `nil`) - Whether the instance should be assigned an IPv4 address or not.
  *   `privateNetwork` (*type:* `String.t`, *default:* `nil`) - The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  *   `requireSsl` (*type:* `boolean()`, *default:* `nil`) - Whether SSL connections over IP should be enforced or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allocatedIpRange => String.t() | nil,
          :authorizedNetworks => list(GoogleApi.DataMigration.V1.Model.SqlAclEntry.t()) | nil,
          :enableIpv4 => boolean() | nil,
          :privateNetwork => String.t() | nil,
          :requireSsl => boolean() | nil
        }

  field(:allocatedIpRange)
  field(:authorizedNetworks, as: GoogleApi.DataMigration.V1.Model.SqlAclEntry, type: :list)
  field(:enableIpv4)
  field(:privateNetwork)
  field(:requireSsl)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.SqlIpConfig do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.SqlIpConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.SqlIpConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
