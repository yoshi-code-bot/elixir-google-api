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

defmodule GoogleApi.Firestore.V1.Model.Aggregation do
  @moduledoc """
  Defines an aggregation that produces a single result.

  ## Attributes

  *   `alias` (*type:* `String.t`, *default:* `nil`) - Optional. Optional name of the field to store the result of the aggregation into. If not provided, Firestore will pick a default name following the format `field_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) OVER ( ... ); ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2) AS field_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) AS field_2 OVER ( ... ); ``` Requires: * Must be unique across all aggregation aliases. * Conform to document field name limitations.
  *   `avg` (*type:* `GoogleApi.Firestore.V1.Model.Avg.t`, *default:* `nil`) - Average aggregator.
  *   `count` (*type:* `GoogleApi.Firestore.V1.Model.Count.t`, *default:* `nil`) - Count aggregator.
  *   `sum` (*type:* `GoogleApi.Firestore.V1.Model.Sum.t`, *default:* `nil`) - Sum aggregator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alias => String.t() | nil,
          :avg => GoogleApi.Firestore.V1.Model.Avg.t() | nil,
          :count => GoogleApi.Firestore.V1.Model.Count.t() | nil,
          :sum => GoogleApi.Firestore.V1.Model.Sum.t() | nil
        }

  field(:alias)
  field(:avg, as: GoogleApi.Firestore.V1.Model.Avg)
  field(:count, as: GoogleApi.Firestore.V1.Model.Count)
  field(:sum, as: GoogleApi.Firestore.V1.Model.Sum)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.Aggregation do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.Aggregation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.Aggregation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
