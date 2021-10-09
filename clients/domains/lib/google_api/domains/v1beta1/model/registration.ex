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

defmodule GoogleApi.Domains.V1beta1.Model.Registration do
  @moduledoc """
  The `Registration` resource facilitates managing and configuring domain name registrations. There are several ways to create a new `Registration` resource: To create a new `Registration` resource, find a suitable domain name by calling the `SearchDomains` method with a query to see available domain name options. After choosing a name, call `RetrieveRegisterParameters` to ensure availability and obtain information like pricing, which is needed to build a call to `RegisterDomain`. Another way to create a new `Registration` is to transfer an existing domain from another registrar. First, go to the current registrar to unlock the domain for transfer and retrieve the domain's transfer authorization code. Then call `RetrieveTransferParameters` to confirm that the domain is unlocked and to get values needed to build a call to `TransferDomain`.

  ## Attributes

  *   `contactSettings` (*type:* `GoogleApi.Domains.V1beta1.Model.ContactSettings.t`, *default:* `nil`) - Required. Settings for contact information linked to the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureContactSettings` method.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The creation timestamp of the `Registration` resource.
  *   `dnsSettings` (*type:* `GoogleApi.Domains.V1beta1.Model.DnsSettings.t`, *default:* `nil`) - Settings controlling the DNS configuration of the `Registration`. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureDnsSettings` method.
  *   `domainName` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The domain name. Unicode domain names must be expressed in Punycode format.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The expiration timestamp of the `Registration`.
  *   `issues` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The set of issues with the `Registration` that require attention.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Set of labels associated with the `Registration`.
  *   `managementSettings` (*type:* `GoogleApi.Domains.V1beta1.Model.ManagementSettings.t`, *default:* `nil`) - Settings for management of the `Registration`, including renewal, billing, and transfer. You cannot update these with the `UpdateRegistration` method. To update these settings, use the `ConfigureManagementSettings` method.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the `Registration` resource, in the format `projects/*/locations/*/registrations/`.
  *   `pendingContactSettings` (*type:* `GoogleApi.Domains.V1beta1.Model.ContactSettings.t`, *default:* `nil`) - Output only. Pending contact settings for the `Registration`. Updates to the `contact_settings` field that change its `registrant_contact` or `privacy` fields require email confirmation by the `registrant_contact` before taking effect. This field is set only if there are pending updates to the `contact_settings` that have not yet been confirmed. To confirm the changes, the `registrant_contact` must follow the instructions in the email they receive.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the `Registration`
  *   `supportedPrivacy` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Set of options for the `contact_settings.privacy` field that this `Registration` supports.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactSettings => GoogleApi.Domains.V1beta1.Model.ContactSettings.t() | nil,
          :createTime => DateTime.t() | nil,
          :dnsSettings => GoogleApi.Domains.V1beta1.Model.DnsSettings.t() | nil,
          :domainName => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :issues => list(String.t()) | nil,
          :labels => map() | nil,
          :managementSettings => GoogleApi.Domains.V1beta1.Model.ManagementSettings.t() | nil,
          :name => String.t() | nil,
          :pendingContactSettings => GoogleApi.Domains.V1beta1.Model.ContactSettings.t() | nil,
          :state => String.t() | nil,
          :supportedPrivacy => list(String.t()) | nil
        }

  field(:contactSettings, as: GoogleApi.Domains.V1beta1.Model.ContactSettings)
  field(:createTime, as: DateTime)
  field(:dnsSettings, as: GoogleApi.Domains.V1beta1.Model.DnsSettings)
  field(:domainName)
  field(:expireTime, as: DateTime)
  field(:issues, type: :list)
  field(:labels, type: :map)
  field(:managementSettings, as: GoogleApi.Domains.V1beta1.Model.ManagementSettings)
  field(:name)
  field(:pendingContactSettings, as: GoogleApi.Domains.V1beta1.Model.ContactSettings)
  field(:state)
  field(:supportedPrivacy, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1beta1.Model.Registration do
  def decode(value, options) do
    GoogleApi.Domains.V1beta1.Model.Registration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1beta1.Model.Registration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
