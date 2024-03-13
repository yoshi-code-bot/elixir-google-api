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

defmodule GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification do
  @moduledoc """


  ## Attributes

  *   `binaryClassifier` (*type:* `String.t`, *default:* `nil`) - Either binary_classifier will be set, using the enum above, or binary_classifier_name will be set, if it is not one of the classifiers in the enum - never both.
  *   `binaryClassifierName` (*type:* `String.t`, *default:* `nil`) - 
  *   `discreteFraction` (*type:* `integer()`, *default:* `nil`) - A CompactDocClassification will not usually have a weight. For a CompactSiteClassification, this value will be 0...127 corresponding to 0.0...1.0, indicating fraction of the site that this label applies to
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryClassifier => String.t() | nil,
          :binaryClassifierName => String.t() | nil,
          :discreteFraction => integer() | nil
        }

  field(:binaryClassifier)
  field(:binaryClassifierName)
  field(:discreteFraction)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactBinaryClassification do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
