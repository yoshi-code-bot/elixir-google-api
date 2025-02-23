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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2IpRules do
  @moduledoc """
  IP rules associated with the finding.

  ## Attributes

  *   `allowed` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Allowed.t`, *default:* `nil`) - Tuple with allowed rules.
  *   `denied` (*type:* `GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Denied.t`, *default:* `nil`) - Tuple with denied rules.
  *   `destinationIpRanges` (*type:* `list(String.t)`, *default:* `nil`) - If destination IP ranges are specified, the firewall rule applies only to traffic that has a destination IP address in these ranges. These ranges must be expressed in CIDR format. Only supports IPv4.
  *   `direction` (*type:* `String.t`, *default:* `nil`) - The direction that the rule is applicable to, one of ingress or egress.
  *   `exposedServices` (*type:* `list(String.t)`, *default:* `nil`) - Name of the network protocol service, such as FTP, that is exposed by the open port. Follows the naming convention available at: https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml.
  *   `sourceIpRanges` (*type:* `list(String.t)`, *default:* `nil`) - If source IP ranges are specified, the firewall rule applies only to traffic that has a source IP address in these ranges. These ranges must be expressed in CIDR format. Only supports IPv4.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowed =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Allowed.t() | nil,
          :denied =>
            GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Denied.t() | nil,
          :destinationIpRanges => list(String.t()) | nil,
          :direction => String.t() | nil,
          :exposedServices => list(String.t()) | nil,
          :sourceIpRanges => list(String.t()) | nil
        }

  field(:allowed, as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Allowed)
  field(:denied, as: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2Denied)
  field(:destinationIpRanges, type: :list)
  field(:direction)
  field(:exposedServices, type: :list)
  field(:sourceIpRanges, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2IpRules do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2IpRules.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2IpRules do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
