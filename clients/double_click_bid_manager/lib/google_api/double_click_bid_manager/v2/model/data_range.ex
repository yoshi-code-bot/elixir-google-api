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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.DataRange do
  @moduledoc """
  The date range to be reported on.

  ## Attributes

  *   `customEndDate` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Date.t`, *default:* `nil`) - If `CUSTOM_DATES` is assigned to range, this field specifies the end date for the date range that is reported on. This field is required if using `CUSTOM_DATES` range and will be ignored otherwise.
  *   `customStartDate` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.Date.t`, *default:* `nil`) - If `CUSTOM_DATES` is assigned to range, this field specifies the starting date for the date range that is reported on. This field is required if using `CUSTOM_DATES` range and will be ignored otherwise.
  *   `range` (*type:* `String.t`, *default:* `nil`) - The preset date range to be reported on. If `CUSTOM_DATES` is assigned to this field, fields custom_start_date and custom_end_date must be set to specify the custom date range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customEndDate => GoogleApi.DoubleClickBidManager.V2.Model.Date.t() | nil,
          :customStartDate => GoogleApi.DoubleClickBidManager.V2.Model.Date.t() | nil,
          :range => String.t() | nil
        }

  field(:customEndDate, as: GoogleApi.DoubleClickBidManager.V2.Model.Date)
  field(:customStartDate, as: GoogleApi.DoubleClickBidManager.V2.Model.Date)
  field(:range)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.DataRange do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.DataRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.DataRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
