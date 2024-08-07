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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.ForwardingRuleInfo do
  @moduledoc """
  For display only. Metadata associated with a Compute Engine forwarding rule.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of the forwarding rule.
  *   `loadBalancerName` (*type:* `String.t`, *default:* `nil`) - Name of the load balancer the forwarding rule belongs to. Empty for forwarding rules not related to load balancers (like PSC forwarding rules).
  *   `matchedPortRange` (*type:* `String.t`, *default:* `nil`) - Port range defined in the forwarding rule that matches the packet.
  *   `matchedProtocol` (*type:* `String.t`, *default:* `nil`) - Protocol defined in the forwarding rule that matches the packet.
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - Network URI.
  *   `pscGoogleApiTarget` (*type:* `String.t`, *default:* `nil`) - PSC Google API target this forwarding rule targets (if applicable).
  *   `pscServiceAttachmentUri` (*type:* `String.t`, *default:* `nil`) - URI of the PSC service attachment this forwarding rule targets (if applicable).
  *   `region` (*type:* `String.t`, *default:* `nil`) - Region of the forwarding rule. Set only for regional forwarding rules.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Target type of the forwarding rule.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of the forwarding rule.
  *   `vip` (*type:* `String.t`, *default:* `nil`) - VIP of the forwarding rule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :loadBalancerName => String.t() | nil,
          :matchedPortRange => String.t() | nil,
          :matchedProtocol => String.t() | nil,
          :networkUri => String.t() | nil,
          :pscGoogleApiTarget => String.t() | nil,
          :pscServiceAttachmentUri => String.t() | nil,
          :region => String.t() | nil,
          :target => String.t() | nil,
          :uri => String.t() | nil,
          :vip => String.t() | nil
        }

  field(:displayName)
  field(:loadBalancerName)
  field(:matchedPortRange)
  field(:matchedProtocol)
  field(:networkUri)
  field(:pscGoogleApiTarget)
  field(:pscServiceAttachmentUri)
  field(:region)
  field(:target)
  field(:uri)
  field(:vip)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.ForwardingRuleInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.ForwardingRuleInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.ForwardingRuleInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
