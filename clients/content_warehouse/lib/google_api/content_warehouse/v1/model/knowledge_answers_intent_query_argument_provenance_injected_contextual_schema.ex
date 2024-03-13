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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema do
  @moduledoc """
  The value is carried from injected contextual schema. Such schemas can be injected by go/qu-biasing-config for particular clients when their biasing configs are triggered for their traffic Config: (if QRewrite source == CARS_IMMERSIVE then inject LocalCarListings and Cars) Context: (QRewrite source == CARS_IMMERSIVE) U: Red [LocalCarListings(Cars() & RelatedTo(/m/red))] In this case, both LocalCarListings and Cars are spanless injected contextual schemas.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryArgumentProvenanceInjectedContextualSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
