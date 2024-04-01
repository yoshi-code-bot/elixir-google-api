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

defmodule GoogleApi.BigQuery.V2.Model.DifferentialPrivacyPolicy do
  @moduledoc """
  Represents privacy policy associated with "differential privacy" method.

  ## Attributes

  *   `deltaBudget` (*type:* `float()`, *default:* `nil`) - Optional. The total delta budget for all queries against the privacy-protected view. Each subscriber query against this view charges the amount of delta that is pre-defined by the contributor through the privacy policy delta_per_query field. If there is sufficient budget, then the subscriber query attempts to complete. It might still fail due to other reasons, in which case the charge is refunded. If there is insufficient budget the query is rejected. There might be multiple charge attempts if a single query references multiple views. In this case there must be sufficient budget for all charges or the query is rejected and charges are refunded in best effort. The budget does not have a refresh policy and can only be updated via ALTER VIEW or circumvented by creating a new view that can be queried with a fresh budget.
  *   `deltaPerQuery` (*type:* `float()`, *default:* `nil`) - Optional. The delta value that is used per query. Delta represents the probability that any row will fail to be epsilon differentially private. Indicates the risk associated with exposing aggregate rows in the result of a query.
  *   `epsilonBudget` (*type:* `float()`, *default:* `nil`) - Optional. The total epsilon budget for all queries against the privacy-protected view. Each subscriber query against this view charges the amount of epsilon they request in their query. If there is sufficient budget, then the subscriber query attempts to complete. It might still fail due to other reasons, in which case the charge is refunded. If there is insufficient budget the query is rejected. There might be multiple charge attempts if a single query references multiple views. In this case there must be sufficient budget for all charges or the query is rejected and charges are refunded in best effort. The budget does not have a refresh policy and can only be updated via ALTER VIEW or circumvented by creating a new view that can be queried with a fresh budget.
  *   `maxEpsilonPerQuery` (*type:* `float()`, *default:* `nil`) - Optional. The maximum epsilon value that a query can consume. If the subscriber specifies epsilon as a parameter in a SELECT query, it must be less than or equal to this value. The epsilon parameter controls the amount of noise that is added to the groups — a higher epsilon means less noise.
  *   `maxGroupsContributed` (*type:* `String.t`, *default:* `nil`) - Optional. The maximum groups contributed value that is used per query. Represents the maximum number of groups to which each protected entity can contribute. Changing this value does not improve or worsen privacy. The best value for accuracy and utility depends on the query and data.
  *   `privacyUnitColumn` (*type:* `String.t`, *default:* `nil`) - Optional. The privacy unit column associated with this policy. Differential privacy policies can only have one privacy unit column per data source object (table, view).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deltaBudget => float() | nil,
          :deltaPerQuery => float() | nil,
          :epsilonBudget => float() | nil,
          :maxEpsilonPerQuery => float() | nil,
          :maxGroupsContributed => String.t() | nil,
          :privacyUnitColumn => String.t() | nil
        }

  field(:deltaBudget)
  field(:deltaPerQuery)
  field(:epsilonBudget)
  field(:maxEpsilonPerQuery)
  field(:maxGroupsContributed)
  field(:privacyUnitColumn)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.DifferentialPrivacyPolicy do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.DifferentialPrivacyPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.DifferentialPrivacyPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
