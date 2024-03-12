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

defmodule GoogleApi.Compute.V1.Model.InstancesSetNameRequest do
  @moduledoc """


  ## Attributes

  *   `currentName` (*type:* `String.t`, *default:* `nil`) - The current name of this resource, used to prevent conflicts. Provide the latest name when making a request to change name.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name to be applied to the instance. Needs to be RFC 1035 compliant.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentName => String.t() | nil,
          :name => String.t() | nil
        }

  field(:currentName)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstancesSetNameRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstancesSetNameRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstancesSetNameRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end