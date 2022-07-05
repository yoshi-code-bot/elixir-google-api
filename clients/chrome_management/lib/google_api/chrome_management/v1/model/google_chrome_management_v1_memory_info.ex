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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo do
  @moduledoc """
  Memory information of a device.

  ## Attributes

  *   `availableRamBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Amount of available RAM in bytes.
  *   `totalMemoryEncryption` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TotalMemoryEncryptionInfo.t`, *default:* `nil`) - Output only. Total memory encryption info for the device.
  *   `totalRamBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Total RAM in bytes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableRamBytes => String.t() | nil,
          :totalMemoryEncryption =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TotalMemoryEncryptionInfo.t()
            | nil,
          :totalRamBytes => String.t() | nil
        }

  field(:availableRamBytes)

  field(:totalMemoryEncryption,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TotalMemoryEncryptionInfo
  )

  field(:totalRamBytes)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1MemoryInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
