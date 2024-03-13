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

defmodule GoogleApi.ContentWarehouse.V1.Model.PornFlagData do
  @moduledoc """
  A protocol buffer to store the url, referer and porn flag for a url. and an optional image score. Next available tag id: 51.

  ## Attributes

  *   `debugInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImagePornDebugInfo.t)`, *default:* `nil`) - DebugInfo stores debug information from the overall classifier. This allows for instance to update counters related to blacklisting without running the full classifier again.
  *   `finalOffensiveScore` (*type:* `number()`, *default:* `nil`) - Final offensive score based on image salient terms and image OCR vulgar and offensive scores.
  *   `finalViolenceScore` (*type:* `number()`, *default:* `nil`) - Final violence score based on some image signals (brain pixel score, co-clicked images violence score, navboost queries score, etc.).
  *   `finalViolenceScoreVersion` (*type:* `String.t`, *default:* `nil`) - A string that indicates the version of SafeSearch classifier used to compute final_violence_score.
  *   `internalSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SafesearchInternalImageSignals.t`, *default:* `nil`) - A proto that stores SafeSearch internal signals that are not exported to clients. SafeSearch team does not provide any guarantees about the presence or the semantics of these signals in the future.
  *   `numberFaces` (*type:* `integer()`, *default:* `nil`) - number of faces
  *   `ocrAnnotation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation.t`, *default:* `nil`) - Information about image OCR text. For details see image/safesearch/content/public/ocr_annotation.proto.
  *   `ocrVulgarScore` (*type:* `number()`, *default:* `nil`) - Vulgar score of the text found by OCR in the image.
  *   `offensiveSymbolDetection` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOffensiveSymbolDetection.t`, *default:* `nil`) - QuimbyCongas-based detection of offensive symbols in the image (currently swastika and Nazi yellow badge).
  *   `photodnaHash` (*type:* `String.t`, *default:* `nil`) - Binary version of the PhotoDNA hash (144 bytes long). If not set (has_photodna_hash() == false) it means that it was not computed, if empty (has_photodna_hash() == true && photodna_hash() == "") it means that the computation failed (cannot be computed for images smaller than 50 x 50).
  *   `pornWithHighConfidence` (*type:* `boolean()`, *default:* `nil`) - This field is set to true when we are pretty confident that the image is porn (with higher precision than the img_porn_moderate restrict). In particular, it means that the image might be demoted for non-porn queries when SafeSearch is Off.
  *   `qbstOffensiveScore` (*type:* `number()`, *default:* `nil`) - QBST-based image offensive score, Navboost based
  *   `qbstSpoofScore` (*type:* `number()`, *default:* `nil`) - QBST-based image spoof score, Navboost based, unrelated to the pixel-based score in PornAnnotation.
  *   `queryStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryStats.t`, *default:* `nil`) - Query statistics from Navboost logs. For more details see classifier/porn/proto/image_porn_classifier_signals.proto.
  *   `queryTextViolenceScore` (*type:* `number()`, *default:* `nil`) - Aggregated navboost query violence score.
  *   `referer` (*type:* `String.t`, *default:* `nil`) - url of the referer page
  *   `referrerCounts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ClassifierPornReferrerCounts.t`, *default:* `nil`) - Information about referrers and their porn classification. For details see classifier/porn/proto/image_porn_classifier_signals.proto.
  *   `semanticSexualizationScore` (*type:* `number()`, *default:* `nil`) - Starburst-based score predicting sexualization level of the image.
  *   `url` (*type:* `String.t`, *default:* `nil`) - url of the image
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugInfo => list(GoogleApi.ContentWarehouse.V1.Model.ImagePornDebugInfo.t()) | nil,
          :finalOffensiveScore => number() | nil,
          :finalViolenceScore => number() | nil,
          :finalViolenceScoreVersion => String.t() | nil,
          :internalSignals =>
            GoogleApi.ContentWarehouse.V1.Model.SafesearchInternalImageSignals.t() | nil,
          :numberFaces => integer() | nil,
          :ocrAnnotation =>
            GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation.t() | nil,
          :ocrVulgarScore => number() | nil,
          :offensiveSymbolDetection =>
            GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOffensiveSymbolDetection.t()
            | nil,
          :photodnaHash => String.t() | nil,
          :pornWithHighConfidence => boolean() | nil,
          :qbstOffensiveScore => number() | nil,
          :qbstSpoofScore => number() | nil,
          :queryStats => GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryStats.t() | nil,
          :queryTextViolenceScore => number() | nil,
          :referer => String.t() | nil,
          :referrerCounts =>
            GoogleApi.ContentWarehouse.V1.Model.ClassifierPornReferrerCounts.t() | nil,
          :semanticSexualizationScore => number() | nil,
          :url => String.t() | nil
        }

  field(:debugInfo, as: GoogleApi.ContentWarehouse.V1.Model.ImagePornDebugInfo, type: :list)
  field(:finalOffensiveScore)
  field(:finalViolenceScore)
  field(:finalViolenceScoreVersion)
  field(:internalSignals, as: GoogleApi.ContentWarehouse.V1.Model.SafesearchInternalImageSignals)
  field(:numberFaces)

  field(:ocrAnnotation,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation
  )

  field(:ocrVulgarScore)

  field(:offensiveSymbolDetection,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOffensiveSymbolDetection
  )

  field(:photodnaHash)
  field(:pornWithHighConfidence)
  field(:qbstOffensiveScore)
  field(:qbstSpoofScore)
  field(:queryStats, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornQueryStats)
  field(:queryTextViolenceScore)
  field(:referer)
  field(:referrerCounts, as: GoogleApi.ContentWarehouse.V1.Model.ClassifierPornReferrerCounts)
  field(:semanticSexualizationScore)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.PornFlagData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.PornFlagData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.PornFlagData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
