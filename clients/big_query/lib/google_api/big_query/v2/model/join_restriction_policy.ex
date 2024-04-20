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

defmodule GoogleApi.BigQuery.V2.Model.JoinRestrictionPolicy do
  @moduledoc """
  Represents privacy policy associated with "join restrictions". Join restriction gives data providers the ability to enforce joins on the 'join_allowed_columns' when data is queried from a privacy protected view.

  ## Attributes

  *   `joinAllowedColumns` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The only columns that joins are allowed on. This field is must be specified for join_conditions JOIN_ANY and JOIN_ALL and it cannot be set for JOIN_BLOCKED.
  *   `joinCondition` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies if a join is required or not on queries for the view. Default is JOIN_CONDITION_UNSPECIFIED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :joinAllowedColumns => list(String.t()) | nil,
          :joinCondition => String.t() | nil
        }

  field(:joinAllowedColumns, type: :list)
  field(:joinCondition)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JoinRestrictionPolicy do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JoinRestrictionPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JoinRestrictionPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end