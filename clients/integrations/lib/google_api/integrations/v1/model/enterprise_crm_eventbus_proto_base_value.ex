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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoBaseValue do
  @moduledoc """


  ## Attributes

  *   `baseFunction` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoFunction.t`, *default:* `nil`) - Start with a function that does not build on existing values. Eg. CurrentTime, Min, Max, Exists, etc.
  *   `literalValue` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParameterValueType.t`, *default:* `nil`) - Start with a literal value.
  *   `referenceValue` (*type:* `String.t`, *default:* `nil`) - Start with a reference value to dereference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseFunction =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoFunction.t() | nil,
          :literalValue =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParameterValueType.t() | nil,
          :referenceValue => String.t() | nil
        }

  field(:baseFunction, as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoFunction)

  field(:literalValue,
    as: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParameterValueType
  )

  field(:referenceValue)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoBaseValue do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoBaseValue.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoBaseValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
