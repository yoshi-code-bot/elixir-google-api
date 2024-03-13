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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverview do
  @moduledoc """
  Next ID: 19 IMPORTANT: This file is used in scattered directories, such that it is risky to add values to any enumerated type. (First of all, compilation breaks on switch statements without default clauses.) Run a global tap presubmit: tap_presubmit -p all --train -c before submitting. Also check out the blame layer of previous updates for hints on what other files to changes.

  ## Attributes

  *   `aspectRatio` (*type:* `String.t`, *default:* `nil`) - 
  *   `audioOverview` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewAudioOverview.t)`, *default:* `nil`) - 
  *   `authoringTool` (*type:* `String.t`, *default:* `nil`) - 
  *   `colorDynamicRange` (*type:* `String.t`, *default:* `nil`) - 
  *   `creationTimeStampUsec` (*type:* `String.t`, *default:* `nil`) - Creation timestamp of this media_info, in Unix timestamp since epoch.
  *   `dataOverview` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewDataOverview.t)`, *default:* `nil`) - 
  *   `frameRate` (*type:* `String.t`, *default:* `nil`) - 
  *   `hasChapters` (*type:* `boolean()`, *default:* `nil`) - Currently used by originals replacement pipeline to exclude all videos containing chapter info.
  *   `mediaClipInfoOverview` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewMediaClipInfoOverview.t`, *default:* `nil`) - 
  *   `orientation` (*type:* `String.t`, *default:* `nil`) - The orientation is annotated based on the final displayed resolution of the video file. A video will be labelled PORTRAIT whenever the height is greater than the width. The orientation is only labelled UNKNOWN in the case that the video stream had some transformation that was not a rotation in the video stream.
  *   `origin` (*type:* `String.t`, *default:* `nil`) - 
  *   `projection` (*type:* `String.t`, *default:* `nil`) - 
  *   `resolution` (*type:* `String.t`, *default:* `nil`) - The resolution for a video takes into account the displayed video size, and takes into account the orientation. For example: - A 1920x1080 video will have ORIENTATION_LANDSCAPE and RESOLUTION_1080P - A 1080x1920 video will have ORIENTATION_PORTRAIT and RESOLUTION_1080P - A 1080x1080 video will have ORIENTATION_LANDSCAPE and RESOLUTION_1080P
  *   `spatialAudioMode` (*type:* `String.t`, *default:* `nil`) - 
  *   `stereoMode` (*type:* `String.t`, *default:* `nil`) - 
  *   `timedtextOverview` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewTimedTextOverview.t)`, *default:* `nil`) - 
  *   `videoOverview` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview.t)`, *default:* `nil`) - 
  *   `wallyMeshType` (*type:* `String.t`, *default:* `nil`) - This only applies when: projection = PROJECTION_PARTIALLY_SPHERICAL
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectRatio => String.t() | nil,
          :audioOverview =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewAudioOverview.t()) | nil,
          :authoringTool => String.t() | nil,
          :colorDynamicRange => String.t() | nil,
          :creationTimeStampUsec => String.t() | nil,
          :dataOverview =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewDataOverview.t()) | nil,
          :frameRate => String.t() | nil,
          :hasChapters => boolean() | nil,
          :mediaClipInfoOverview =>
            GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewMediaClipInfoOverview.t() | nil,
          :orientation => String.t() | nil,
          :origin => String.t() | nil,
          :projection => String.t() | nil,
          :resolution => String.t() | nil,
          :spatialAudioMode => String.t() | nil,
          :stereoMode => String.t() | nil,
          :timedtextOverview =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewTimedTextOverview.t())
            | nil,
          :videoOverview =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview.t()) | nil,
          :wallyMeshType => String.t() | nil
        }

  field(:aspectRatio)

  field(:audioOverview,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewAudioOverview,
    type: :list
  )

  field(:authoringTool)
  field(:colorDynamicRange)
  field(:creationTimeStampUsec)

  field(:dataOverview,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewDataOverview,
    type: :list
  )

  field(:frameRate)
  field(:hasChapters)

  field(:mediaClipInfoOverview,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewMediaClipInfoOverview
  )

  field(:orientation)
  field(:origin)
  field(:projection)
  field(:resolution)
  field(:spatialAudioMode)
  field(:stereoMode)

  field(:timedtextOverview,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewTimedTextOverview,
    type: :list
  )

  field(:videoOverview,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview,
    type: :list
  )

  field(:wallyMeshType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverview do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverview.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverview do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
