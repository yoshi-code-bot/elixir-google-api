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

defmodule GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictions do
  @moduledoc """
  Next ID: 4

  ## Attributes

  *   `languageScore` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictionsLanguageScore.t)`, *default:* `nil`) - A list of watchpage languages predicted arranged according to their scores.
  *   `usesSpeechSignals` (*type:* `boolean()`, *default:* `nil`) - Does the prediction uses speech signals like audio language.
  *   `version` (*type:* `String.t`, *default:* `nil`) - An identifier to recognize the model version used for this prediction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :languageScore =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictionsLanguageScore.t()
            )
            | nil,
          :usesSpeechSignals => boolean() | nil,
          :version => String.t() | nil
        }

  field(:languageScore,
    as:
      GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictionsLanguageScore,
    type: :list
  )

  field(:usesSpeechSignals)
  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictions do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictions.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.WatchpageLanguageWatchPageLanguageModelPredictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
