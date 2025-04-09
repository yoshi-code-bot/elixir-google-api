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

defmodule GoogleApi.Meet.V2.Model.SmartNotesConfig do
  @moduledoc """
  Configuration related to smart notes in a meeting space. More details about smart notes https://support.google.com/meet/answer/14754931?hl=en.

  ## Attributes

  *   `autoSmartNotesGeneration` (*type:* `String.t`, *default:* `nil`) - Defines whether to automatically generate a summary and recap of the meeting for all invitees in the organization when someone with the privilege to enable smart notes joins the meeting.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoSmartNotesGeneration => String.t() | nil
        }

  field(:autoSmartNotesGeneration)
end

defimpl Poison.Decoder, for: GoogleApi.Meet.V2.Model.SmartNotesConfig do
  def decode(value, options) do
    GoogleApi.Meet.V2.Model.SmartNotesConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Meet.V2.Model.SmartNotesConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
