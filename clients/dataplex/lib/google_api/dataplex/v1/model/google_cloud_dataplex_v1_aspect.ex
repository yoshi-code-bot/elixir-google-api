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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect do
  @moduledoc """
  An aspect is a single piece of metadata describing an entry.

  ## Attributes

  *   `aspectSource` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectSource.t`, *default:* `nil`) - Optional. Information related to the source system of the aspect.
  *   `aspectType` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the type used to create this Aspect.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the Aspect was created.
  *   `data` (*type:* `map()`, *default:* `nil`) - Required. The content of the aspect, according to its aspect type schema. The maximum size of the field is 120KB (encoded as UTF-8).
  *   `path` (*type:* `String.t`, *default:* `nil`) - Output only. The path in the entry under which the aspect is attached.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the Aspect was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectSource =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectSource.t() | nil,
          :aspectType => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :data => map() | nil,
          :path => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:aspectSource, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AspectSource)
  field(:aspectType)
  field(:createTime, as: DateTime)
  field(:data, type: :map)
  field(:path)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Aspect do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
