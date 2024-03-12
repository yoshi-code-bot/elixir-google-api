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

defmodule GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceModelSummary do
  @moduledoc """
  Summary of a device

  ## Attributes

  *   `deviceId` (*type:* `GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceId.t`, *default:* `nil`) - Identifier of the device.
  *   `deviceUri` (*type:* `String.t`, *default:* `nil`) - Link to the device in Play Device Catalog.
  *   `marketingName` (*type:* `String.t`, *default:* `nil`) - Display name of the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId =>
            GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceId.t()
            | nil,
          :deviceUri => String.t() | nil,
          :marketingName => String.t() | nil
        }

  field(:deviceId,
    as: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceId
  )

  field(:deviceUri)
  field(:marketingName)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceModelSummary do
  def decode(value, options) do
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceModelSummary.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GooglePlayDeveloperReportingV1beta1DeviceModelSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end