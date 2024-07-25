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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration do
  @moduledoc """
  IP Management configuration.

  ## Attributes

  *   `allocatedIpRange` (*type:* `String.t`, *default:* `nil`) - The name of the allocated ip range for the private ip Cloud SQL instance. For example: "google-managed-services-default". If set, the instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?.`
  *   `authorizedNetworks` (*type:* `list(GoogleApi.SQLAdmin.V1beta4.Model.AclEntry.t)`, *default:* `nil`) - The list of external networks that are allowed to connect to the instance using the IP. In 'CIDR' notation, also known as 'slash' notation (for example: `157.197.200.0/24`).
  *   `enablePrivatePathForGoogleCloudServices` (*type:* `boolean()`, *default:* `nil`) - Controls connectivity to private IP instances from Google services, such as BigQuery.
  *   `ipv4Enabled` (*type:* `boolean()`, *default:* `nil`) - Whether the instance is assigned a public IP address or not.
  *   `privateNetwork` (*type:* `String.t`, *default:* `nil`) - The resource link for the VPC network from which the Cloud SQL instance is accessible for private IP. For example, `/projects/myProject/global/networks/default`. This setting can be updated, but it cannot be removed after it is set.
  *   `pscConfig` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.PscConfig.t`, *default:* `nil`) - PSC settings for this instance.
  *   `requireSsl` (*type:* `boolean()`, *default:* `nil`) - Use `ssl_mode` instead. Whether SSL/TLS connections over IP are enforced. If set to false, then allow both non-SSL/non-TLS and SSL/TLS connections. For SSL/TLS connections, the client certificate won't be verified. If set to true, then only allow connections encrypted with SSL/TLS and with valid client certificates. If you want to enforce SSL/TLS without enforcing the requirement for valid client certificates, then use the `ssl_mode` flag instead of the legacy `require_ssl` flag.
  *   `serverCaMode` (*type:* `String.t`, *default:* `nil`) - Specify what type of CA is used for the server certificate.
  *   `sslMode` (*type:* `String.t`, *default:* `nil`) - Specify how SSL/TLS is enforced in database connections. If you must use the `require_ssl` flag for backward compatibility, then only the following value pairs are valid: For PostgreSQL and MySQL: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` * `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` For SQL Server: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=true` The value of `ssl_mode` has priority over the value of `require_ssl`. For example, for the pair `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false`, `ssl_mode=ENCRYPTED_ONLY` means accept only SSL connections, while `require_ssl=false` means accept both non-SSL and SSL connections. In this case, MySQL and PostgreSQL databases respect `ssl_mode` and accepts only SSL connections.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allocatedIpRange => String.t() | nil,
          :authorizedNetworks => list(GoogleApi.SQLAdmin.V1beta4.Model.AclEntry.t()) | nil,
          :enablePrivatePathForGoogleCloudServices => boolean() | nil,
          :ipv4Enabled => boolean() | nil,
          :privateNetwork => String.t() | nil,
          :pscConfig => GoogleApi.SQLAdmin.V1beta4.Model.PscConfig.t() | nil,
          :requireSsl => boolean() | nil,
          :serverCaMode => String.t() | nil,
          :sslMode => String.t() | nil
        }

  field(:allocatedIpRange)
  field(:authorizedNetworks, as: GoogleApi.SQLAdmin.V1beta4.Model.AclEntry, type: :list)
  field(:enablePrivatePathForGoogleCloudServices)
  field(:ipv4Enabled)
  field(:privateNetwork)
  field(:pscConfig, as: GoogleApi.SQLAdmin.V1beta4.Model.PscConfig)
  field(:requireSsl)
  field(:serverCaMode)
  field(:sslMode)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.IpConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
