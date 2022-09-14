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

defmodule GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Product do
  @moduledoc """
  A Product resource that defines a subscription service that can be resold.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Response only. Resource name of the product. It will have the format of "partners/{partner_id}/products/{product_id}"
  *   `priceConfigs` (*type:* `list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig.t)`, *default:* `nil`) - Output only. Price configs for the product in the available regions.
  *   `regionCodes` (*type:* `list(String.t)`, *default:* `nil`) - Output only. 2-letter ISO region code where the product is available in. Ex. "US" Please refers to: https://en.wikipedia.org/wiki/ISO_3166-1
  *   `subscriptionBillingCycleDuration` (*type:* `GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Duration.t`, *default:* `nil`) - Output only. Specifies the length of the billing cycle of the subscription.
  *   `titles` (*type:* `list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleTypeLocalizedText.t)`, *default:* `nil`) - Output only. Localized human readable name of the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :priceConfigs =>
            list(
              GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig.t()
            )
            | nil,
          :regionCodes => list(String.t()) | nil,
          :subscriptionBillingCycleDuration =>
            GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Duration.t()
            | nil,
          :titles =>
            list(GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleTypeLocalizedText.t())
            | nil
        }

  field(:name)

  field(:priceConfigs,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1ProductPriceConfig,
    type: :list
  )

  field(:regionCodes, type: :list)

  field(:subscriptionBillingCycleDuration,
    as:
      GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Duration
  )

  field(:titles,
    as: GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleTypeLocalizedText,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Product do
  def decode(value, options) do
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Product.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PaymentsResellerSubscription.V1.Model.GoogleCloudPaymentsResellerSubscriptionV1Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
