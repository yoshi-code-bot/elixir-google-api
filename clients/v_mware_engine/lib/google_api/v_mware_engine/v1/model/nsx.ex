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

defmodule GoogleApi.VMwareEngine.V1.Model.Nsx do
  @moduledoc """
  Details about a NSX Manager appliance.

  ## Attributes

  *   `fqdn` (*type:* `String.t`, *default:* `nil`) - Fully qualified domain name of the appliance.
  *   `internalIp` (*type:* `String.t`, *default:* `nil`) - Internal IP address of the appliance.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the appliance.
  *   `version` (*type:* `String.t`, *default:* `nil`) - Version of the appliance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fqdn => String.t() | nil,
          :internalIp => String.t() | nil,
          :state => String.t() | nil,
          :version => String.t() | nil
        }

  field(:fqdn)
  field(:internalIp)
  field(:state)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.Nsx do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.Nsx.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.Nsx do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end