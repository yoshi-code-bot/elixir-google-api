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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours do
  @moduledoc """
  Information about the user's working hours.

  ## Attributes

  *   `availableTime` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaAvailabilityPeriod.t)`, *default:* `nil`) - A list of availability periods representing the user's working hours as configured in calendar.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableTime =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaAvailabilityPeriod.t()
            )
            | nil
        }

  field(:availableTime,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaAvailabilityPeriod,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaWorkingHours do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
