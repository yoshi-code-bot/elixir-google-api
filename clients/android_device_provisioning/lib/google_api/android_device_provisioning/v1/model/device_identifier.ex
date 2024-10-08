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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier do
  @moduledoc """
  Encapsulates hardware and product IDs to identify a manufactured device. To understand requirements on identifier sets, read [Identifiers](https://developers.google.com/zero-touch/guides/identifiers).

  ## Attributes

  *   `chromeOsAttestedDeviceId` (*type:* `String.t`, *default:* `nil`) - An identifier provided by OEMs, carried through the production and sales process. Only applicable to Chrome OS devices.
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - The type of the device
  *   `imei` (*type:* `String.t`, *default:* `nil`) - The device’s IMEI number. Validated on input.
  *   `imei2` (*type:* `String.t`, *default:* `nil`) - The device’s second IMEI number.
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - The device manufacturer’s name. Matches the device's built-in value returned from `android.os.Build.MANUFACTURER`. Allowed values are listed in [Android manufacturers](/zero-touch/resources/manufacturer-names#manufacturers-names).
  *   `meid` (*type:* `String.t`, *default:* `nil`) - The device’s MEID number.
  *   `meid2` (*type:* `String.t`, *default:* `nil`) - The device’s second MEID number.
  *   `model` (*type:* `String.t`, *default:* `nil`) - The device model's name. Allowed values are listed in [Android models](/zero-touch/resources/manufacturer-names#model-names) and [Chrome OS models](https://support.google.com/chrome/a/answer/10130175#identify_compatible).
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - The manufacturer's serial number for the device. This value might not be unique across different device models.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chromeOsAttestedDeviceId => String.t() | nil,
          :deviceType => String.t() | nil,
          :imei => String.t() | nil,
          :imei2 => String.t() | nil,
          :manufacturer => String.t() | nil,
          :meid => String.t() | nil,
          :meid2 => String.t() | nil,
          :model => String.t() | nil,
          :serialNumber => String.t() | nil
        }

  field(:chromeOsAttestedDeviceId)
  field(:deviceType)
  field(:imei)
  field(:imei2)
  field(:manufacturer)
  field(:meid)
  field(:meid2)
  field(:model)
  field(:serialNumber)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
