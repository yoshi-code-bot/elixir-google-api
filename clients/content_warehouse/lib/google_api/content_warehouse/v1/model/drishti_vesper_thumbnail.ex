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

defmodule GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnail do
  @moduledoc """
  The attributes of a video thumbnail.

  ## Attributes

  *   `denseFeatures` (*type:* `list(number())`, *default:* `nil`) - Thumbnail dense features
  *   `encodedImageString` (*type:* `String.t`, *default:* `nil`) - Thumbnail image as an encoded image. Deprecated, use encoded_thumbnails instead.
  *   `encodedImageStringSmall` (*type:* `String.t`, *default:* `nil`) - Thumbnail image as an encoded image with smaller resolution. Deprecated, use encoded_thumbnails instead.
  *   `encodedThumbnails` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperEncodedThumbnail.t)`, *default:* `nil`) - Encoded thumbnail images.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Thumbnail id.
  *   `ocrText` (*type:* `String.t`, *default:* `nil`) - Text in video thumbnails that was detected by OCR.
  *   `qualityScores` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnailQualityScore.t)`, *default:* `nil`) - Thumbnail quality scores.
  *   `shouldUpdateDefaultThumbnail` (*type:* `boolean()`, *default:* `nil`) - If true, this thumbnail should update default thumbnail.
  *   `thumbnailerModelVersion` (*type:* `String.t`, *default:* `nil`) - Thumbnailer Version.
  *   `timestampMs` (*type:* `integer()`, *default:* `nil`) - Thumbnail timestamp in milliseconds.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Thumbnail type.
  *   `userReportedThumbnail` (*type:* `GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail.t`, *default:* `nil`) - 
  *   `userReportedThumbnails` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail.t)`, *default:* `nil`) - All user reported thumbnails of interest.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Thumbnail version, i.e., the unix time in seconds when the thumbnail was created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :denseFeatures => list(number()) | nil,
          :encodedImageString => String.t() | nil,
          :encodedImageStringSmall => String.t() | nil,
          :encodedThumbnails =>
            list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperEncodedThumbnail.t()) | nil,
          :id => String.t() | nil,
          :ocrText => String.t() | nil,
          :qualityScores =>
            list(GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnailQualityScore.t()) | nil,
          :shouldUpdateDefaultThumbnail => boolean() | nil,
          :thumbnailerModelVersion => String.t() | nil,
          :timestampMs => integer() | nil,
          :type => String.t() | nil,
          :userReportedThumbnail =>
            GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail.t()
            | nil,
          :userReportedThumbnails =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail.t()
            )
            | nil,
          :version => integer() | nil
        }

  field(:denseFeatures, type: :list)
  field(:encodedImageString)
  field(:encodedImageStringSmall)

  field(:encodedThumbnails,
    as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperEncodedThumbnail,
    type: :list
  )

  field(:id)
  field(:ocrText)

  field(:qualityScores,
    as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnailQualityScore,
    type: :list
  )

  field(:shouldUpdateDefaultThumbnail)
  field(:thumbnailerModelVersion)
  field(:timestampMs)
  field(:type)

  field(:userReportedThumbnail,
    as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail
  )

  field(:userReportedThumbnails,
    as: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperUserReportUserReportedThumbnail,
    type: :list
  )

  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnail do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.DrishtiVesperThumbnail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
