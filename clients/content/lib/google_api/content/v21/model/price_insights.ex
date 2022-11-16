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

defmodule GoogleApi.Content.V21.Model.PriceInsights do
  @moduledoc """
  Price Insights fields requested by the merchant in the query. Field values are only set if the merchant queries `PriceInsightsProductView`. https://support.google.com/merchants/answer/11916926

  ## Attributes

  *   `predictedClicksChangeFraction` (*type:* `float()`, *default:* `nil`) - The predicted change in clicks as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in clicks.
  *   `predictedConversionsChangeFraction` (*type:* `float()`, *default:* `nil`) - The predicted change in conversions as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in conversions).
  *   `predictedGrossProfitChangeFraction` (*type:* `float()`, *default:* `nil`) - The predicted change in gross profit as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in gross profit.
  *   `predictedImpressionsChangeFraction` (*type:* `float()`, *default:* `nil`) - The predicted change in impressions as a fraction after introducing the suggested price compared to current active price. For example, 0.05 is a 5% predicted increase in impressions.
  *   `predictedMonthlyGrossProfitChangeCurrencyCode` (*type:* `String.t`, *default:* `nil`) - The predicted monthly gross profit change currency (ISO 4217 code).
  *   `predictedMonthlyGrossProfitChangeMicros` (*type:* `String.t`, *default:* `nil`) - The predicted change in gross profit in micros after introducing the suggested price for a month compared to current active price.
  *   `suggestedPriceCurrencyCode` (*type:* `String.t`, *default:* `nil`) - The suggested price currency (ISO 4217 code).
  *   `suggestedPriceMicros` (*type:* `String.t`, *default:* `nil`) - The latest suggested price in micros for the product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :predictedClicksChangeFraction => float() | nil,
          :predictedConversionsChangeFraction => float() | nil,
          :predictedGrossProfitChangeFraction => float() | nil,
          :predictedImpressionsChangeFraction => float() | nil,
          :predictedMonthlyGrossProfitChangeCurrencyCode => String.t() | nil,
          :predictedMonthlyGrossProfitChangeMicros => String.t() | nil,
          :suggestedPriceCurrencyCode => String.t() | nil,
          :suggestedPriceMicros => String.t() | nil
        }

  field(:predictedClicksChangeFraction)
  field(:predictedConversionsChangeFraction)
  field(:predictedGrossProfitChangeFraction)
  field(:predictedImpressionsChangeFraction)
  field(:predictedMonthlyGrossProfitChangeCurrencyCode)
  field(:predictedMonthlyGrossProfitChangeMicros)
  field(:suggestedPriceCurrencyCode)
  field(:suggestedPriceMicros)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.PriceInsights do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.PriceInsights.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.PriceInsights do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
