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

defmodule GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessDateRange do
  @moduledoc """
  A contiguous range of days: startDate, startDate + 1, ..., endDate.

  ## Attributes

  *   `endDate` (*type:* `String.t`, *default:* `nil`) - The inclusive end date for the query in the format `YYYY-MM-DD`. Cannot be before `startDate`. The format `NdaysAgo`, `yesterday`, or `today` is also accepted, and in that case, the date is inferred based on the current time in the request's time zone.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) - The inclusive start date for the query in the format `YYYY-MM-DD`. Cannot be after `endDate`. The format `NdaysAgo`, `yesterday`, or `today` is also accepted, and in that case, the date is inferred based on the current time in the request's time zone.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endDate => String.t() | nil,
          :startDate => String.t() | nil
        }

  field(:endDate)
  field(:startDate)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessDateRange do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessDateRange.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1beta.Model.GoogleAnalyticsAdminV1betaAccessDateRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end