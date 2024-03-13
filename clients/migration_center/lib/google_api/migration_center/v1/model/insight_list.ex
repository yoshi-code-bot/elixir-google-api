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

defmodule GoogleApi.MigrationCenter.V1.Model.InsightList do
  @moduledoc """
  Message containing insights list.

  ## Attributes

  *   `insights` (*type:* `list(GoogleApi.MigrationCenter.V1.Model.Insight.t)`, *default:* `nil`) - Output only. Insights of the list.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update timestamp.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :insights => list(GoogleApi.MigrationCenter.V1.Model.Insight.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:insights, as: GoogleApi.MigrationCenter.V1.Model.Insight, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.InsightList do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.InsightList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.InsightList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end