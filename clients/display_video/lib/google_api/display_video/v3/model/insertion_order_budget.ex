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

defmodule GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudget do
  @moduledoc """
  Settings that control how insertion order budget is allocated.

  ## Attributes

  *   `automationType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of automation used to manage bid and budget for the insertion order. If this field is unspecified in creation, the value defaults to `INSERTION_ORDER_AUTOMATION_TYPE_NONE`.
  *   `budgetSegments` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudgetSegment.t)`, *default:* `nil`) - Required. The list of budget segments. Use a budget segment to specify a specific budget for a given period of time an insertion order is running.
  *   `budgetUnit` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The budget unit specifies whether the budget is currency based or impression based.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :automationType => String.t() | nil,
          :budgetSegments =>
            list(GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudgetSegment.t()) | nil,
          :budgetUnit => String.t() | nil
        }

  field(:automationType)

  field(:budgetSegments,
    as: GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudgetSegment,
    type: :list
  )

  field(:budgetUnit)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudget do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.InsertionOrderBudget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
