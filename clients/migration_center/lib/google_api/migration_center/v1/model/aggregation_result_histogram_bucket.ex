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

defmodule GoogleApi.MigrationCenter.V1.Model.AggregationResultHistogramBucket do
  @moduledoc """
  A histogram bucket with a lower and upper bound, and a count of items with a field value between those bounds. The lower bound is inclusive and the upper bound is exclusive. Lower bound may be -infinity and upper bound may be infinity.

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Count of items in the bucket.
  *   `lowerBound` (*type:* `float()`, *default:* `nil`) - Lower bound - inclusive.
  *   `upperBound` (*type:* `float()`, *default:* `nil`) - Upper bound - exclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :lowerBound => float() | nil,
          :upperBound => float() | nil
        }

  field(:count)
  field(:lowerBound)
  field(:upperBound)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.AggregationResultHistogramBucket do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.AggregationResultHistogramBucket.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.AggregationResultHistogramBucket do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end