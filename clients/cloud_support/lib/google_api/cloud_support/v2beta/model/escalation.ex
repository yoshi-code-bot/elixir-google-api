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

defmodule GoogleApi.CloudSupport.V2beta.Model.Escalation do
  @moduledoc """
  An escalation of a support case.

  ## Attributes

  *   `justification` (*type:* `String.t`, *default:* `nil`) - Required. A free text description to accompany the `reason` field above. Provides additional context on why the case is being escalated.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Required. The reason why the Case is being escalated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :justification => String.t() | nil,
          :reason => String.t() | nil
        }

  field(:justification)
  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSupport.V2beta.Model.Escalation do
  def decode(value, options) do
    GoogleApi.CloudSupport.V2beta.Model.Escalation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSupport.V2beta.Model.Escalation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
