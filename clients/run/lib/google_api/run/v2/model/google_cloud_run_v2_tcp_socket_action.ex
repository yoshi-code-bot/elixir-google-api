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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2TCPSocketAction do
  @moduledoc """
  TCPSocketAction describes an action based on opening a socket

  ## Attributes

  *   `port` (*type:* `integer()`, *default:* `nil`) - Port number to access on the container. Must be in the range 1 to 65535. If not specified, defaults to the exposed port of the container, which is the value of container.ports[0].containerPort.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :port => integer() | nil
        }

  field(:port)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2TCPSocketAction do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2TCPSocketAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2TCPSocketAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
