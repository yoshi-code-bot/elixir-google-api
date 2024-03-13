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

defmodule GoogleApi.Language.V1.Model.XPSTuningTrial do
  @moduledoc """
  Metrics for a tuning job generated, will get forwarded to Stackdriver as model tuning logs. Setting this as a standalone message out of CreateModelMetadata to avoid confusion as we expose this message only to users.

  ## Attributes

  *   `modelStructure` (*type:* `GoogleApi.Language.V1.Model.XPSTablesModelStructure.t`, *default:* `nil`) - Model parameters for the trial.
  *   `trainingObjectivePoint` (*type:* `GoogleApi.Language.V1.Model.XPSTrainingObjectivePoint.t`, *default:* `nil`) - The optimization objective evaluation of the eval split data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :modelStructure => GoogleApi.Language.V1.Model.XPSTablesModelStructure.t() | nil,
          :trainingObjectivePoint =>
            GoogleApi.Language.V1.Model.XPSTrainingObjectivePoint.t() | nil
        }

  field(:modelStructure, as: GoogleApi.Language.V1.Model.XPSTablesModelStructure)
  field(:trainingObjectivePoint, as: GoogleApi.Language.V1.Model.XPSTrainingObjectivePoint)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSTuningTrial do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSTuningTrial.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSTuningTrial do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end