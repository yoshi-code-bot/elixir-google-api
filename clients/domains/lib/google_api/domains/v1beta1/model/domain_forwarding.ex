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

defmodule GoogleApi.Domains.V1beta1.Model.DomainForwarding do
  @moduledoc """
  Domain forwarding configuration.

  ## Attributes

  *   `pathForwarding` (*type:* `boolean()`, *default:* `nil`) - If true, forwards the path after the domain name to the same path at the new address.
  *   `pemCertificate` (*type:* `String.t`, *default:* `nil`) - The PEM-encoded certificate chain.
  *   `redirectType` (*type:* `String.t`, *default:* `nil`) - The redirect type.
  *   `sslEnabled` (*type:* `boolean()`, *default:* `nil`) - If true, the forwarding works also over HTTPS.
  *   `subdomain` (*type:* `String.t`, *default:* `nil`) - The subdomain of the registered domain that is being forwarded. E.g. `www.example.com`, `example.com` (i.e. the registered domain itself) or `*.example.com` (i.e. all subdomains).
  *   `targetUri` (*type:* `String.t`, *default:* `nil`) - The target of the domain forwarding, i.e. the path to redirect the `subdomain` to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pathForwarding => boolean() | nil,
          :pemCertificate => String.t() | nil,
          :redirectType => String.t() | nil,
          :sslEnabled => boolean() | nil,
          :subdomain => String.t() | nil,
          :targetUri => String.t() | nil
        }

  field(:pathForwarding)
  field(:pemCertificate)
  field(:redirectType)
  field(:sslEnabled)
  field(:subdomain)
  field(:targetUri)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1beta1.Model.DomainForwarding do
  def decode(value, options) do
    GoogleApi.Domains.V1beta1.Model.DomainForwarding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1beta1.Model.DomainForwarding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
