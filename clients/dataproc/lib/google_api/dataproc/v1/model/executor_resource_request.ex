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

defmodule GoogleApi.Dataproc.V1.Model.ExecutorResourceRequest do
  @moduledoc """
  Resources used per executor used by the application.

  ## Attributes

  *   `amount` (*type:* `String.t`, *default:* `nil`) - 
  *   `discoveryScript` (*type:* `String.t`, *default:* `nil`) - 
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - 
  *   `vendor` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amount => String.t() | nil,
          :discoveryScript => String.t() | nil,
          :resourceName => String.t() | nil,
          :vendor => String.t() | nil
        }

  field(:amount)
  field(:discoveryScript)
  field(:resourceName)
  field(:vendor)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ExecutorResourceRequest do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ExecutorResourceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ExecutorResourceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
