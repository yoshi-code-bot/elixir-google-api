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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData do
  @moduledoc """
  Transaction data associated with a payment protected by reCAPTCHA Enterprise.

  ## Attributes

  *   `billingAddress` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.t`, *default:* `nil`) - Optional. Address associated with the payment method when applicable.
  *   `cardBin` (*type:* `String.t`, *default:* `nil`) - Optional. The Bank Identification Number - generally the first 6 or 8 digits of the card.
  *   `cardLastFour` (*type:* `String.t`, *default:* `nil`) - Optional. The last four digits of the card.
  *   `currencyCode` (*type:* `String.t`, *default:* `nil`) - Optional. The currency code in ISO-4217 format.
  *   `gatewayInfo` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo.t`, *default:* `nil`) - Optional. Information about the payment gateway's response to the transaction.
  *   `items` (*type:* `list(GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataItem.t)`, *default:* `nil`) - Optional. Items purchased in this transaction.
  *   `merchants` (*type:* `list(GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataUser.t)`, *default:* `nil`) - Optional. Information about the user or users fulfilling the transaction.
  *   `paymentMethod` (*type:* `String.t`, *default:* `nil`) - Optional. The payment method for the transaction. The allowed values are: * credit-card * debit-card * gift-card * processor-{name} (If a third-party is used, for example, processor-paypal) * custom-{name} (If an alternative method is used, for example, custom-crypto)
  *   `shippingAddress` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.t`, *default:* `nil`) - Optional. Destination address if this transaction involves shipping a physical item.
  *   `shippingValue` (*type:* `float()`, *default:* `nil`) - Optional. The value of shipping in the specified currency. 0 for free or no shipping.
  *   `transactionId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the transaction. This custom identifier can be used to reference this transaction in the future, for example, labeling a refund or chargeback event. Two attempts at the same transaction should use the same transaction id.
  *   `user` (*type:* `GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataUser.t`, *default:* `nil`) - Optional. Information about the user paying/initiating the transaction.
  *   `value` (*type:* `float()`, *default:* `nil`) - Optional. The decimal value of the transaction in the specified currency.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingAddress =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.t()
            | nil,
          :cardBin => String.t() | nil,
          :cardLastFour => String.t() | nil,
          :currencyCode => String.t() | nil,
          :gatewayInfo =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo.t()
            | nil,
          :items =>
            list(
              GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataItem.t()
            )
            | nil,
          :merchants =>
            list(
              GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataUser.t()
            )
            | nil,
          :paymentMethod => String.t() | nil,
          :shippingAddress =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.t()
            | nil,
          :shippingValue => float() | nil,
          :transactionId => String.t() | nil,
          :user =>
            GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataUser.t()
            | nil,
          :value => float() | nil
        }

  field(:billingAddress,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
  )

  field(:cardBin)
  field(:cardLastFour)
  field(:currencyCode)

  field(:gatewayInfo,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
  )

  field(:items,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataItem,
    type: :list
  )

  field(:merchants,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataUser,
    type: :list
  )

  field(:paymentMethod)

  field(:shippingAddress,
    as:
      GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
  )

  field(:shippingValue)
  field(:transactionId)

  field(:user,
    as: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataUser
  )

  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end