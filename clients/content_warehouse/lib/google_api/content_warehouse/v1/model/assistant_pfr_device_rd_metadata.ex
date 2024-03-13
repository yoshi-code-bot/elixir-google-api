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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantPfrDeviceRdMetadata do
  @moduledoc """


  ## Attributes

  *   `deviceName` (*type:* `String.t`, *default:* `nil`) - 
  *   `deviceTypes` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `effectiveArgSpanLength` (*type:* `number()`, *default:* `nil`) - 
  *   `hasAmbiguousResolutions` (*type:* `boolean()`, *default:* `nil`) - True if there are more than one possible resolutions to the RD.
  *   `hasResolvedDeviceId` (*type:* `boolean()`, *default:* `nil`) - True if there's at least one device id that gets resolved. Note this is different from is_grounded = true: it is possible that is_grounded = false (num_grounded_args =0) but there is resolved device ids. E.g.: "turn on the blue light" Power_on(device_object = [d1, d2]:RD(category=DeviceObject(name='blue light')) where there are "blue light 1" and "blue light 2" hence two resolved device ids. But since the quantifier is single, GB can't resolve the ambiguity and would set num_grounded_args = 0 to indicate such unresolved ambiguity.
  *   `roomName` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceName => String.t() | nil,
          :deviceTypes => list(String.t()) | nil,
          :effectiveArgSpanLength => number() | nil,
          :hasAmbiguousResolutions => boolean() | nil,
          :hasResolvedDeviceId => boolean() | nil,
          :roomName => String.t() | nil
        }

  field(:deviceName)
  field(:deviceTypes, type: :list)
  field(:effectiveArgSpanLength)
  field(:hasAmbiguousResolutions)
  field(:hasResolvedDeviceId)
  field(:roomName)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantPfrDeviceRdMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantPfrDeviceRdMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantPfrDeviceRdMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end