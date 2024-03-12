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

defmodule GoogleApi.Run.V1.Model.ContainerPort do
  @moduledoc """
  ContainerPort represents a network port in a single container.

  ## Attributes

  *   `containerPort` (*type:* `integer()`, *default:* `nil`) - Port number the container listens on. If present, this must be a valid port number, 0 < x < 65536. If not present, it will default to port 8080. For more information, see https://cloud.google.com/run/docs/container-contract#port
  *   `name` (*type:* `String.t`, *default:* `nil`) - If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  *   `protocol` (*type:* `String.t`, *default:* `nil`) - Protocol for port. Must be "TCP". Defaults to "TCP".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerPort => integer() | nil,
          :name => String.t() | nil,
          :protocol => String.t() | nil
        }

  field(:containerPort)
  field(:name)
  field(:protocol)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.ContainerPort do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.ContainerPort.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.ContainerPort do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
