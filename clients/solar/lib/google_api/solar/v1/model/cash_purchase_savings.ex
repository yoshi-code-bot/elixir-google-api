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

defmodule GoogleApi.Solar.V1.Model.CashPurchaseSavings do
  @moduledoc """
  Cost and benefit of an outright purchase of a particular configuration of solar panels with a particular electricity usage.

  ## Attributes

  *   `outOfPocketCost` (*type:* `GoogleApi.Solar.V1.Model.Money.t`, *default:* `nil`) - Initial cost before tax incentives: the amount that must be paid out-of-pocket. Contrast with `upfront_cost`, which is after tax incentives.
  *   `paybackYears` (*type:* `number()`, *default:* `nil`) - Number of years until payback occurs. A negative value means payback never occurs within the lifetime period.
  *   `rebateValue` (*type:* `GoogleApi.Solar.V1.Model.Money.t`, *default:* `nil`) - The value of all tax rebates.
  *   `savings` (*type:* `GoogleApi.Solar.V1.Model.SavingsOverTime.t`, *default:* `nil`) - How much is saved (or not) over the lifetime period.
  *   `upfrontCost` (*type:* `GoogleApi.Solar.V1.Model.Money.t`, *default:* `nil`) - Initial cost after tax incentives: it's the amount that must be paid during first year. Contrast with `out_of_pocket_cost`, which is before tax incentives.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :outOfPocketCost => GoogleApi.Solar.V1.Model.Money.t() | nil,
          :paybackYears => number() | nil,
          :rebateValue => GoogleApi.Solar.V1.Model.Money.t() | nil,
          :savings => GoogleApi.Solar.V1.Model.SavingsOverTime.t() | nil,
          :upfrontCost => GoogleApi.Solar.V1.Model.Money.t() | nil
        }

  field(:outOfPocketCost, as: GoogleApi.Solar.V1.Model.Money)
  field(:paybackYears)
  field(:rebateValue, as: GoogleApi.Solar.V1.Model.Money)
  field(:savings, as: GoogleApi.Solar.V1.Model.SavingsOverTime)
  field(:upfrontCost, as: GoogleApi.Solar.V1.Model.Money)
end

defimpl Poison.Decoder, for: GoogleApi.Solar.V1.Model.CashPurchaseSavings do
  def decode(value, options) do
    GoogleApi.Solar.V1.Model.CashPurchaseSavings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Solar.V1.Model.CashPurchaseSavings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
