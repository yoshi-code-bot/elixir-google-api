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

defmodule GoogleApi.MigrationCenter.V1.Model.FrameViolationEntry do
  @moduledoc """
  A resource that contains a single violation of a reported `AssetFrame` resource.

  ## Attributes

  *   `field` (*type:* `String.t`, *default:* `nil`) - The field of the original frame where the violation occurred.
  *   `violation` (*type:* `String.t`, *default:* `nil`) - A message describing the violation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :field => String.t() | nil,
          :violation => String.t() | nil
        }

  field(:field)
  field(:violation)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.FrameViolationEntry do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.FrameViolationEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.FrameViolationEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
