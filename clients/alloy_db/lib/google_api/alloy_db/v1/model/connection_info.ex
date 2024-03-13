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

defmodule GoogleApi.AlloyDB.V1.Model.ConnectionInfo do
  @moduledoc """
  ConnectionInfo singleton resource. https://google.aip.dev/156

  ## Attributes

  *   `instanceUid` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the Instance.
  *   `ipAddress` (*type:* `String.t`, *default:* `nil`) - Output only. The private network IP address for the Instance. This is the default IP for the instance and is always created (even if enable_public_ip is set). This is the connection endpoint for an end-user application.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the ConnectionInfo singleton resource, e.g.: projects/{project}/locations/{location}/clusters/*/instances/*/connectionInfo This field currently has no semantic meaning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instanceUid => String.t() | nil,
          :ipAddress => String.t() | nil,
          :name => String.t() | nil
        }

  field(:instanceUid)
  field(:ipAddress)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.ConnectionInfo do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.ConnectionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.ConnectionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end