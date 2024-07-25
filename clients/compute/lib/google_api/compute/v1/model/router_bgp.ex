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

defmodule GoogleApi.Compute.V1.Model.RouterBgp do
  @moduledoc """


  ## Attributes

  *   `advertiseMode` (*type:* `String.t`, *default:* `nil`) - User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  *   `advertisedGroups` (*type:* `list(String.t)`, *default:* `nil`) - User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  *   `advertisedIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange.t)`, *default:* `nil`) - User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  *   `asn` (*type:* `integer()`, *default:* `nil`) - Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  *   `identifierRange` (*type:* `String.t`, *default:* `nil`) - Explicitly specifies a range of valid BGP Identifiers for this Router. It is provided as a link-local IPv4 range (from 169.254.0.0/16), of size at least /30, even if the BGP sessions are over IPv6. It must not overlap with any IPv4 BGP session ranges. Other vendors commonly call this "router ID".
  *   `keepaliveInterval` (*type:* `integer()`, *default:* `nil`) - The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiseMode => String.t() | nil,
          :advertisedGroups => list(String.t()) | nil,
          :advertisedIpRanges =>
            list(GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange.t()) | nil,
          :asn => integer() | nil,
          :identifierRange => String.t() | nil,
          :keepaliveInterval => integer() | nil
        }

  field(:advertiseMode)
  field(:advertisedGroups, type: :list)
  field(:advertisedIpRanges, as: GoogleApi.Compute.V1.Model.RouterAdvertisedIpRange, type: :list)
  field(:asn)
  field(:identifierRange)
  field(:keepaliveInterval)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterBgp do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterBgp.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterBgp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
