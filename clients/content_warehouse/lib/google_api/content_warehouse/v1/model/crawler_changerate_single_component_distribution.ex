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

defmodule GoogleApi.ContentWarehouse.V1.Model.CrawlerChangerateSingleComponentDistribution do
  @moduledoc """
  Proto contains parameters of a single component distribution.

  ## Attributes

  *   `logScaling` (*type:* `number()`, *default:* `nil`) - Scaling factor to ensure the approximated posterior to have the same scale as the product of prior and likelihood. This value is used to compute posterior weights. Uses log scale to provide a wider range. This field is for internal use only.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type indicates the type of the distribution.
  *   `weight` (*type:* `number()`, *default:* `nil`) - The weight is only used in multiple component scenarios.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :logScaling => number() | nil,
          :type => String.t() | nil,
          :weight => number() | nil
        }

  field(:logScaling)
  field(:type)
  field(:weight)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CrawlerChangerateSingleComponentDistribution do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CrawlerChangerateSingleComponentDistribution.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CrawlerChangerateSingleComponentDistribution do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end