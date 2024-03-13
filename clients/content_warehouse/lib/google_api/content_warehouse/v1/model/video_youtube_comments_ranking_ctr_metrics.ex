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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics do
  @moduledoc """
  Used for stanza KV pair. Next tag: 7.

  ## Attributes

  *   `downvotes` (*type:* `String.t`, *default:* `nil`) - 
  *   `impressions` (*type:* `String.t`, *default:* `nil`) - 
  *   `measureWindow` (*type:* `String.t`, *default:* `nil`) - 
  *   `teaserClicks` (*type:* `String.t`, *default:* `nil`) - 
  *   `teaserImpressions` (*type:* `String.t`, *default:* `nil`) - 
  *   `upvotes` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :downvotes => String.t() | nil,
          :impressions => String.t() | nil,
          :measureWindow => String.t() | nil,
          :teaserClicks => String.t() | nil,
          :teaserImpressions => String.t() | nil,
          :upvotes => String.t() | nil
        }

  field(:downvotes)
  field(:impressions)
  field(:measureWindow)
  field(:teaserClicks)
  field(:teaserImpressions)
  field(:upvotes)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoYoutubeCommentsRankingCTRMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end