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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus do
  @moduledoc """
  The status of a report.

  ## Attributes

  *   `finishTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp of when report generation finished successfully or in failure. This field will not be set unless state is `DONE` or `FAILED`.
  *   `format` (*type:* `String.t`, *default:* `nil`) - The format of the generated report file.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the report generation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :finishTime => DateTime.t() | nil,
          :format => String.t() | nil,
          :state => String.t() | nil
        }

  field(:finishTime, as: DateTime)
  field(:format)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.ReportStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
