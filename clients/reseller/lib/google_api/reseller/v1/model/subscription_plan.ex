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

defmodule GoogleApi.Reseller.V1.Model.SubscriptionPlan do
  @moduledoc """
  The `plan` property is required. In this version of the API, the G Suite plans are the flexible plan, annual commitment plan, and the 30-day free trial plan. For more information about the API"s payment plans, see the API concepts.

  ## Attributes

  *   `commitmentInterval` (*type:* `GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval.t`, *default:* `nil`) - In this version of the API, annual commitment plan's interval is one year. *Note: *When `billingMethod` value is `OFFLINE`, the subscription property object `plan.commitmentInterval` is omitted in all API responses. 
  *   `isCommitmentPlan` (*type:* `boolean()`, *default:* `nil`) - The `isCommitmentPlan` property's boolean value identifies the plan as an annual commitment plan: - `true` — The subscription's plan is an annual commitment plan. - `false` — The plan is not an annual commitment plan. 
  *   `planName` (*type:* `String.t`, *default:* `nil`) - The `planName` property is required. This is the name of the subscription's plan. For more information about the Google payment plans, see the API concepts. Possible values are: - `ANNUAL_MONTHLY_PAY` — The annual commitment plan with monthly payments. *Caution: *`ANNUAL_MONTHLY_PAY` is returned as `ANNUAL` in all API responses. - `ANNUAL_YEARLY_PAY` — The annual commitment plan with yearly payments - `FLEXIBLE` — The flexible plan - `TRIAL` — The 30-day free trial plan. A subscription in trial will be suspended after the 30th free day if no payment plan is assigned. Calling `changePlan` will assign a payment plan to a trial but will not activate the plan. A trial will automatically begin its assigned payment plan after its 30th free day or immediately after calling `startPaidService`. - `FREE` — The free plan is exclusive to the Cloud Identity SKU and does not incur any billing. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commitmentInterval =>
            GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval.t(),
          :isCommitmentPlan => boolean(),
          :planName => String.t()
        }

  field(:commitmentInterval, as: GoogleApi.Reseller.V1.Model.SubscriptionPlanCommitmentInterval)
  field(:isCommitmentPlan)
  field(:planName)
end

defimpl Poison.Decoder, for: GoogleApi.Reseller.V1.Model.SubscriptionPlan do
  def decode(value, options) do
    GoogleApi.Reseller.V1.Model.SubscriptionPlan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Reseller.V1.Model.SubscriptionPlan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
