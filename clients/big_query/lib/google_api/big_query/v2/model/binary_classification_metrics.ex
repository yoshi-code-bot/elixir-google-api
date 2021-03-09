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

defmodule GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics do
  @moduledoc """
  Evaluation metrics for binary classification/classifier models.

  ## Attributes

  *   `aggregateClassificationMetrics` (*type:* `GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics.t`, *default:* `nil`) - Aggregate classification metrics.
  *   `binaryConfusionMatrixList` (*type:* `list(GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix.t)`, *default:* `nil`) - Binary confusion matrix at multiple thresholds.
  *   `negativeLabel` (*type:* `String.t`, *default:* `nil`) - Label representing the negative class.
  *   `positiveLabel` (*type:* `String.t`, *default:* `nil`) - Label representing the positive class.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateClassificationMetrics =>
            GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics.t() | nil,
          :binaryConfusionMatrixList =>
            list(GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix.t()) | nil,
          :negativeLabel => String.t() | nil,
          :positiveLabel => String.t() | nil
        }

  field(:aggregateClassificationMetrics,
    as: GoogleApi.BigQuery.V2.Model.AggregateClassificationMetrics
  )

  field(:binaryConfusionMatrixList,
    as: GoogleApi.BigQuery.V2.Model.BinaryConfusionMatrix,
    type: :list
  )

  field(:negativeLabel)
  field(:positiveLabel)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.BinaryClassificationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
