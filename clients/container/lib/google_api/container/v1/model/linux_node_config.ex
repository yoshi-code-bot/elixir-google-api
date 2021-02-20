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

defmodule GoogleApi.Container.V1.Model.LinuxNodeConfig do
  @moduledoc """
  Parameters that can be configured on Linux nodes.

  ## Attributes

  *   `sysctls` (*type:* `map()`, *default:* `nil`) - The Linux kernel parameters to be applied to the nodes and all pods running on the nodes. The following parameters are supported. net.core.netdev_max_backlog net.core.rmem_max net.core.wmem_default net.core.wmem_max net.core.optmem_max net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem net.ipv4.tcp_tw_reuse
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sysctls => map()
        }

  field(:sysctls, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.LinuxNodeConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.LinuxNodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.LinuxNodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
