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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.SubscriptionLineItemBundleDetails do
  @moduledoc """
  The bundle details for a line item corresponding to a hard bundle.

  ## Attributes

  *   `bundleElementDetails` (*type:* `list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemBundleDetailsBundleElementDetails.t)`, *default:* `nil`) - Output only. The details for each element in the hard bundle.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bundleElementDetails =>
            list(
              GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemBundleDetailsBundleElementDetails.t()
            )
            | nil
        }

  field(:bundleElementDetails,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1SubscriptionLineItemBundleDetailsBundleElementDetails,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.PaymentsResellerSubscription.V1.Model.SubscriptionLineItemBundleDetails do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.SubscriptionLineItemBundleDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PaymentsResellerSubscription.V1.Model.SubscriptionLineItemBundleDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end