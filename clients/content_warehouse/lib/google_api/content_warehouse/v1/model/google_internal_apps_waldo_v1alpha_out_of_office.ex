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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOutOfOffice do
  @moduledoc """
  The status indicating the user is out of office.

  ## Attributes

  *   `comeBackTime` (*type:* `DateTime.t`, *default:* `nil`) - The closest time when the user will be available after this OOO block. This might be different from the end of the OOO block in Calendar, since the OOO block might end on Friday evening, and then the user is outside working hours.
  *   `committedUntil` (*type:* `DateTime.t`, *default:* `nil`) - The time when the user will either stop being committed or change commitment type (i.e. InMeeting, DoNotDisturb, Busy or OutOfOffice < Xh). Note that the goal of this field is to provide information to help users decide how to communicate with a user (see also http://shortn/_wXYXtZScgh). Note that if this OOO block is large (>=Xh), committed_until is not set.
  *   `eventSummary` (*type:* `String.t`, *default:* `nil`) - The summary of the corresponding OOO block in Calendar. This is entered by the user, so we return it "as is" - no i18n.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comeBackTime => DateTime.t() | nil,
          :committedUntil => DateTime.t() | nil,
          :eventSummary => String.t() | nil
        }

  field(:comeBackTime, as: DateTime)
  field(:committedUntil, as: DateTime)
  field(:eventSummary)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOutOfOffice do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOutOfOffice.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleInternalAppsWaldoV1alphaOutOfOffice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end