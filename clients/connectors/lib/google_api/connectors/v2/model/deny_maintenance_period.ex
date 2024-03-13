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

defmodule GoogleApi.Connectors.V2.Model.DenyMaintenancePeriod do
  @moduledoc """
  DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start_date must be less than the end_date.

  ## Attributes

  *   `endDate` (*type:* `GoogleApi.Connectors.V2.Model.Date.t`, *default:* `nil`) - Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be before the end.
  *   `startDate` (*type:* `GoogleApi.Connectors.V2.Model.Date.t`, *default:* `nil`) - Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be the same or after the start.
  *   `time` (*type:* `GoogleApi.Connectors.V2.Model.TimeOfDay.t`, *default:* `nil`) - Time in UTC when the Blackout period starts on start_date and ends on end_date. This can be: * Full time. * All zeros for 00:00:00 UTC
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => GoogleApi.Connectors.V2.Model.Date.t() | nil,
          :startDate => GoogleApi.Connectors.V2.Model.Date.t() | nil,
          :time => GoogleApi.Connectors.V2.Model.TimeOfDay.t() | nil
        }

  field(:endDate, as: GoogleApi.Connectors.V2.Model.Date)
  field(:startDate, as: GoogleApi.Connectors.V2.Model.Date)
  field(:time, as: GoogleApi.Connectors.V2.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V2.Model.DenyMaintenancePeriod do
  def decode(value, options) do
    GoogleApi.Connectors.V2.Model.DenyMaintenancePeriod.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V2.Model.DenyMaintenancePeriod do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
