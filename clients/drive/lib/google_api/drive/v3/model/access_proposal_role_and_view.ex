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

defmodule GoogleApi.Drive.V3.Model.AccessProposalRoleAndView do
  @moduledoc """
  A wrapper for the role and view of an access proposal.

  ## Attributes

  *   `role` (*type:* `String.t`, *default:* `nil`) - The role that was proposed by the requester New values may be added in the future, but the following are currently possible: * `writer` * `commenter` * `reader`
  *   `view` (*type:* `String.t`, *default:* `nil`) - Indicates the view for this access proposal. Only populated for proposals that belong to a view. `published` is the only supported value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :role => String.t() | nil,
          :view => String.t() | nil
        }

  field(:role)
  field(:view)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.AccessProposalRoleAndView do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.AccessProposalRoleAndView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.AccessProposalRoleAndView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
