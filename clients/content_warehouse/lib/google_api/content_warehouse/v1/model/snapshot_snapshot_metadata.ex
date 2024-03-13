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

defmodule GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata do
  @moduledoc """


  ## Attributes

  *   `countDistinctResources` (*type:* `integer()`, *default:* `nil`) - The number of distinct resources fetched to render the content. This may aid the calculation of total page load time for user experience. For example, if total_content_length is only a few dozen kilobytes, but that is from fetching 100 distinct resources, total page load time might be much higher than the total_content_length would otherwise infer.
  *   `crawlTimestamp` (*type:* `String.t`, *default:* `nil`) - The time at which the main resource of the Snapshot was fetched, in seconds since epoch. Note that the various page dependencies may have been fetched at much earlier points in time (hours, maybe days) and that this could be off from the actual rendering time.
  *   `snapshotDocument` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotDocument.t`, *default:* `nil`) - 
  *   `snapshotQualityScore` (*type:* `number()`, *default:* `nil`) - The score here corresponds to the score in Snapshot, a number between 0.0 and 1.0 (higher the better).
  *   `totalContentSize` (*type:* `String.t`, *default:* `nil`) - Number of bytes fetched to render the content. For example, to render a web page, this value would include the HTML, stylesheets, images, and all other dependencies. This can be used to calculate a coarse estimate of the total page load time a user might experience.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :countDistinctResources => integer() | nil,
          :crawlTimestamp => String.t() | nil,
          :snapshotDocument =>
            GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotDocument.t() | nil,
          :snapshotQualityScore => number() | nil,
          :totalContentSize => String.t() | nil
        }

  field(:countDistinctResources)
  field(:crawlTimestamp)
  field(:snapshotDocument, as: GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotDocument)
  field(:snapshotQualityScore)
  field(:totalContentSize)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SnapshotSnapshotMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
