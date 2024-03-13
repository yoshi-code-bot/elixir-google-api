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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostorePointCurvatureProto do
  @moduledoc """


  ## Attributes

  *   `curvatureStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `radiansPerMeter` (*type:* `number()`, *default:* `nil`) - Curvature in radians per meter. Negative is a curve to the left and positive is a curve to the right.
  *   `startPointFraction` (*type:* `number()`, *default:* `nil`) - How far along the line this curvature value starts to apply, in the format of decimal between 0 and 1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :curvatureStatus => String.t() | nil,
          :radiansPerMeter => number() | nil,
          :startPointFraction => number() | nil
        }

  field(:curvatureStatus)
  field(:radiansPerMeter)
  field(:startPointFraction)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostorePointCurvatureProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostorePointCurvatureProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostorePointCurvatureProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
