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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec do
  @moduledoc """
  Specification for custom ranking based on customer specified attribute value. It provides more controls for customized ranking than the simple (condition, boost) combination above.

  ## Attributes

  *   `attributeType` (*type:* `String.t`, *default:* `nil`) - Optional. The attribute type to be used to determine the boost amount. The attribute value can be derived from the field value of the specified field_name. In the case of numerical it is straightforward i.e. attribute_value = numerical_field_value. In the case of freshness however, attribute_value = (time.now() - datetime_field_value).
  *   `controlPoints` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint.t)`, *default:* `nil`) - Optional. The control points used to define the curve. The monotonic function (defined through the interpolation_type above) passes through the control points listed here.
  *   `fieldName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the field whose value will be used to determine the boost amount.
  *   `interpolationType` (*type:* `String.t`, *default:* `nil`) - Optional. The interpolation type to be applied to connect the control points listed below.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeType => String.t() | nil,
          :controlPoints =>
            list(
              GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint.t()
            )
            | nil,
          :fieldName => String.t() | nil,
          :interpolationType => String.t() | nil
        }

  field(:attributeType)

  field(:controlPoints,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint,
    type: :list
  )

  field(:fieldName)
  field(:interpolationType)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
