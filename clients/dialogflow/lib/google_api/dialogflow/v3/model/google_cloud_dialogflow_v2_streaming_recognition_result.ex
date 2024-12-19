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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2StreamingRecognitionResult do
  @moduledoc """
  Contains a speech recognition result corresponding to a portion of the audio that is currently being processed or an indication that this is the end of the single requested utterance. While end-user audio is being processed, Dialogflow sends a series of results. Each result may contain a `transcript` value. A transcript represents a portion of the utterance. While the recognizer is processing audio, transcript values may be interim values or finalized values. Once a transcript is finalized, the `is_final` value is set to true and processing continues for the next transcript. If `StreamingDetectIntentRequest.query_input.audio_config.single_utterance` was true, and the recognizer has completed processing audio, the `message_type` value is set to `END_OF_SINGLE_UTTERANCE and the following (last) result contains the last finalized transcript. The complete end-user utterance is determined by concatenating the finalized transcript values received for the series of results. In the following example, single utterance is enabled. In the case where single utterance is not enabled, result 7 would not occur. ``` Num | transcript | message_type | is_final --- | ----------------------- | ----------------------- | -------- 1 | "tube" | TRANSCRIPT | false 2 | "to be a" | TRANSCRIPT | false 3 | "to be" | TRANSCRIPT | false 4 | "to be or not to be" | TRANSCRIPT | true 5 | "that's" | TRANSCRIPT | false 6 | "that is | TRANSCRIPT | false 7 | unset | END_OF_SINGLE_UTTERANCE | unset 8 | " that is the question" | TRANSCRIPT | true ``` Concatenating the finalized transcripts with `is_final` set to true, the complete utterance becomes "to be or not to be that is the question".

  ## Attributes

  *   `confidence` (*type:* `number()`, *default:* `nil`) - The Speech confidence between 0.0 and 1.0 for the current portion of audio. A higher number indicates an estimated greater likelihood that the recognized words are correct. The default of 0.0 is a sentinel value indicating that confidence was not set. This field is typically only provided if `is_final` is true and you should not rely on it being accurate or even set.
  *   `isFinal` (*type:* `boolean()`, *default:* `nil`) - If `false`, the `StreamingRecognitionResult` represents an interim result that may change. If `true`, the recognizer will not return any further hypotheses about this piece of the audio. May only be populated for `message_type` = `TRANSCRIPT`.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Detected language code for the transcript.
  *   `messageType` (*type:* `String.t`, *default:* `nil`) - Type of the result message.
  *   `speechEndOffset` (*type:* `String.t`, *default:* `nil`) - Time offset of the end of this Speech recognition result relative to the beginning of the audio. Only populated for `message_type` = `TRANSCRIPT`.
  *   `speechWordInfo` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SpeechWordInfo.t)`, *default:* `nil`) - Word-specific information for the words recognized by Speech in transcript. Populated if and only if `message_type` = `TRANSCRIPT` and [InputAudioConfig.enable_word_info] is set.
  *   `transcript` (*type:* `String.t`, *default:* `nil`) - Transcript text representing the words that the user spoke. Populated if and only if `message_type` = `TRANSCRIPT`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => number() | nil,
          :isFinal => boolean() | nil,
          :languageCode => String.t() | nil,
          :messageType => String.t() | nil,
          :speechEndOffset => String.t() | nil,
          :speechWordInfo =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SpeechWordInfo.t()) | nil,
          :transcript => String.t() | nil
        }

  field(:confidence)
  field(:isFinal)
  field(:languageCode)
  field(:messageType)
  field(:speechEndOffset)

  field(:speechWordInfo,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SpeechWordInfo,
    type: :list
  )

  field(:transcript)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2StreamingRecognitionResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2StreamingRecognitionResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2StreamingRecognitionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
