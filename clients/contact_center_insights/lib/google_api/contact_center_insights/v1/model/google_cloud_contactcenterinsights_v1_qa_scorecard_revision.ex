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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardRevision do
  @moduledoc """
  A revision of a QaScorecard. Modifying published scorecard fields would invalidate existing scorecard results — the questions may have changed, or the score weighting will make existing scores impossible to understand. So changes must create a new revision, rather than modifying the existing resource.

  ## Attributes

  *   `alternateIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Alternative IDs for this revision of the scorecard, e.g., `latest`.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp that the revision was created.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The name of the scorecard revision. Format: projects/{project}/locations/{location}/qaScorecards/{qa_scorecard}/revisions/{revision}
  *   `snapshot` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecard.t`, *default:* `nil`) - The snapshot of the scorecard at the time of this revision's creation.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the scorecard revision, indicating whether it's ready to be used in analysis.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alternateIds => list(String.t()) | nil,
          :createTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :snapshot =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecard.t()
            | nil,
          :state => String.t() | nil
        }

  field(:alternateIds, type: :list)
  field(:createTime, as: DateTime)
  field(:name)

  field(:snapshot,
    as: GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecard
  )

  field(:state)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardRevision do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardRevision.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1QaScorecardRevision do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
