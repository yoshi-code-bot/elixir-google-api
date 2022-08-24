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

defmodule GoogleApi.Run.V1.Model.StatusDetails do
  @moduledoc """
  StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.

  ## Attributes

  *   `causes` (*type:* `list(GoogleApi.Run.V1.Model.StatusCause.t)`, *default:* `nil`) - The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  *   `group` (*type:* `String.t`, *default:* `nil`) - The group attribute of the resource associated with the status StatusReason.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  *   `retryAfterSeconds` (*type:* `integer()`, *default:* `nil`) - If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/user-guide/identifiers#uids
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :causes => list(GoogleApi.Run.V1.Model.StatusCause.t()) | nil,
          :group => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :retryAfterSeconds => integer() | nil,
          :uid => String.t() | nil
        }

  field(:causes, as: GoogleApi.Run.V1.Model.StatusCause, type: :list)
  field(:group)
  field(:kind)
  field(:name)
  field(:retryAfterSeconds)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.StatusDetails do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.StatusDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.StatusDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
