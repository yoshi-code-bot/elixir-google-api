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

defmodule GoogleApi.Monitoring.V3.Model.Minutes do
  @moduledoc """
  Used to schedule the query to run every so many minutes.

  ## Attributes

  *   `periodicity` (*type:* `integer()`, *default:* `nil`) - Required. Number of minutes between runs. The interval must be greater than or equal to 5 minutes and less than or equal to 1440 minutes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :periodicity => integer() | nil
        }

  field(:periodicity)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.Minutes do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.Minutes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.Minutes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
