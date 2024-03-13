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

defmodule GoogleApi.WorkloadManager.V1.Model.FrontEndServer do
  @moduledoc """
  The front end server

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The frontend name
  *   `osVersion` (*type:* `String.t`, *default:* `nil`) - Output only. OS information
  *   `resources` (*type:* `list(GoogleApi.WorkloadManager.V1.Model.CloudResource.t)`, *default:* `nil`) - Output only. resources in the component
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :osVersion => String.t() | nil,
          :resources => list(GoogleApi.WorkloadManager.V1.Model.CloudResource.t()) | nil
        }

  field(:name)
  field(:osVersion)
  field(:resources, as: GoogleApi.WorkloadManager.V1.Model.CloudResource, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.FrontEndServer do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.FrontEndServer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.FrontEndServer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end