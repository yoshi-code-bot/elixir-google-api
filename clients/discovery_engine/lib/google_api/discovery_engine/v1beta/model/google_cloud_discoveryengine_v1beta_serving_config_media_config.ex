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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig do
  @moduledoc """
  Specifies the configurations needed for Media Discovery. Currently we support: * `demote_content_watched`: Threshold for watched content demotion. Customers can specify if using watched content demotion or use viewed detail page. Using the content watched demotion, customers need to specify the watched minutes or percentage exceeds the threshold, the content will be demoted in the recommendation result. * `promote_fresh_content`: cutoff days for fresh content promotion. Customers can specify if using content freshness promotion. If the content was published within the cutoff days, the content will be promoted in the recommendation result. Can only be set if SolutionType is SOLUTION_TYPE_RECOMMENDATION.

  ## Attributes

  *   `contentFreshnessCutoffDays` (*type:* `integer()`, *default:* `nil`) - Specifies the content freshness used for recommendation result. Contents will be demoted if contents were published for more than content freshness cutoff days.
  *   `contentWatchedMinutesThreshold` (*type:* `number()`, *default:* `nil`) - Specifies the content watched minutes threshold for demotion.
  *   `contentWatchedPercentageThreshold` (*type:* `number()`, *default:* `nil`) - Specifies the content watched percentage threshold for demotion. Threshold value must be between [0, 1.0] inclusive.
  *   `contentWatchedSecondsThreshold` (*type:* `number()`, *default:* `nil`) - Specifies the content watched minutes threshold for demotion.
  *   `demotionEventType` (*type:* `String.t`, *default:* `nil`) - Specifies the event type used for demoting recommendation result. Currently supported values: * `view-item`: Item viewed. * `media-play`: Start/resume watching a video, playing a song, etc. * `media-complete`: Finished or stopped midway through a video, song, etc. If unset, watch history demotion will not be applied. Content freshness demotion will still be applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentFreshnessCutoffDays => integer() | nil,
          :contentWatchedMinutesThreshold => number() | nil,
          :contentWatchedPercentageThreshold => number() | nil,
          :contentWatchedSecondsThreshold => number() | nil,
          :demotionEventType => String.t() | nil
        }

  field(:contentFreshnessCutoffDays)
  field(:contentWatchedMinutesThreshold)
  field(:contentWatchedPercentageThreshold)
  field(:contentWatchedSecondsThreshold)
  field(:demotionEventType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaServingConfigMediaConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end