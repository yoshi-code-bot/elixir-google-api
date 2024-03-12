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

defmodule GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig do
  @moduledoc """
  Allow the producer to specify which consumers can connect to it.

  ## Attributes

  *   `disableGlobalAccess` (*type:* `boolean()`, *default:* `nil`) - This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  *   `network` (*type:* `String.t`, *default:* `nil`) - The resource path of the consumer network where PSC connections are allowed to be created in. Note, this network does not need be in the ConsumerPscConfig.project in the case of SharedVPC. Example: projects/{projectNumOrId}/global/networks/{networkId}.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The consumer project where PSC connections are allowed to be created in.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Overall state of PSC Connections management for this consumer psc config.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableGlobalAccess => boolean() | nil,
          :network => String.t() | nil,
          :project => String.t() | nil,
          :state => String.t() | nil
        }

  field(:disableGlobalAccess)
  field(:network)
  field(:project)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.ConsumerPscConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
