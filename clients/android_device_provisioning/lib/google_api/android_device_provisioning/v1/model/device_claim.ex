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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceClaim do
  @moduledoc """
  A record of a device claimed by a reseller for a customer. Devices claimed for zero-touch enrollment have a claim with the type `SECTION_TYPE_ZERO_TOUCH`. To learn more, read [Claim devices for customers](/zero-touch/guides/how-it-works#claim).

  ## Attributes

  *   `additionalService` (*type:* `String.t`, *default:* `nil`) - The Additional service registered for the device.
  *   `googleWorkspaceCustomerId` (*type:* `String.t`, *default:* `nil`) - The ID of the Google Workspace account that owns the Chrome OS device.
  *   `ownerCompanyId` (*type:* `String.t`, *default:* `nil`) - The ID of the Customer that purchased the device.
  *   `resellerId` (*type:* `String.t`, *default:* `nil`) - The ID of the reseller that claimed the device.
  *   `sectionType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of claim made on the device.
  *   `vacationModeExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the device will exit ‘vacation mode’. This value is present iff the device is in 'vacation mode'.
  *   `vacationModeStartTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the device was put into ‘vacation mode’. This value is present iff the device is in 'vacation mode'.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalService => String.t() | nil,
          :googleWorkspaceCustomerId => String.t() | nil,
          :ownerCompanyId => String.t() | nil,
          :resellerId => String.t() | nil,
          :sectionType => String.t() | nil,
          :vacationModeExpireTime => DateTime.t() | nil,
          :vacationModeStartTime => DateTime.t() | nil
        }

  field(:additionalService)
  field(:googleWorkspaceCustomerId)
  field(:ownerCompanyId)
  field(:resellerId)
  field(:sectionType)
  field(:vacationModeExpireTime, as: DateTime)
  field(:vacationModeStartTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceClaim do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceClaim.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceClaim do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
