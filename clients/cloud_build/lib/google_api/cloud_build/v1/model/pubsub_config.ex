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

defmodule GoogleApi.CloudBuild.V1.Model.PubsubConfig do
  @moduledoc """
  PubsubConfig describes the configuration of a trigger that creates a build whenever a Pub/Sub message is published.

  ## Attributes

  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - Service account that will make the push request.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Potential issues with the underlying Pub/Sub subscription configuration. Only populated on get requests.
  *   `subscription` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the subscription. Format is `projects/{project}/subscriptions/{subscription}`.
  *   `topic` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the topic from which this subscription is receiving messages. Format is `projects/{project}/topics/{topic}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceAccountEmail => String.t() | nil,
          :state => String.t() | nil,
          :subscription => String.t() | nil,
          :topic => String.t() | nil
        }

  field(:serviceAccountEmail)
  field(:state)
  field(:subscription)
  field(:topic)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.PubsubConfig do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.PubsubConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.PubsubConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
