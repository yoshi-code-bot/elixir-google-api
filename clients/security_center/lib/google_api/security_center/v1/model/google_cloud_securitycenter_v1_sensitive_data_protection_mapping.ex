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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping do
  @moduledoc """
  Resource value mapping for Sensitive Data Protection findings. If any of these mappings have a resource value that is not unspecified, the resource_value field will be ignored when reading this configuration.

  ## Attributes

  *   `highSensitivityMapping` (*type:* `String.t`, *default:* `nil`) - Resource value mapping for high-sensitivity Sensitive Data Protection findings
  *   `mediumSensitivityMapping` (*type:* `String.t`, *default:* `nil`) - Resource value mapping for medium-sensitivity Sensitive Data Protection findings
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :highSensitivityMapping => String.t() | nil,
          :mediumSensitivityMapping => String.t() | nil
        }

  field(:highSensitivityMapping)
  field(:mediumSensitivityMapping)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV1SensitiveDataProtectionMapping do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end