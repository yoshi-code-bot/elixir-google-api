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

defmodule GoogleApi.PlayIntegrity.V1.Model.RecentDeviceActivity do
  @moduledoc """
  Recent device activity can help developers identify devices that have exhibited hyperactive attestation activity, which could be a sign of an attack or token farming.

  ## Attributes

  *   `deviceActivityLevel` (*type:* `String.t`, *default:* `nil`) - Required. Indicates the activity level of the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceActivityLevel => String.t() | nil
        }

  field(:deviceActivityLevel)
end

defimpl Poison.Decoder, for: GoogleApi.PlayIntegrity.V1.Model.RecentDeviceActivity do
  def decode(value, options) do
    GoogleApi.PlayIntegrity.V1.Model.RecentDeviceActivity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayIntegrity.V1.Model.RecentDeviceActivity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
