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

defmodule GoogleApi.Content.V21.Model.InputFieldCheckboxInput do
  @moduledoc """
  Checkbox input allows merchants to provide a boolean value. Corresponds to the [html input type=checkbox](https://www.w3.org/TR/2012/WD-html-markup-20121025/input.checkbox.html#input.checkbox). If merchant checks the box, the input value for the field is `true`, otherwise it is `false`. This type of input is often used as a confirmation that the merchant completed required steps before they are allowed to start the action. In such a case, the input field is marked as required and the button to trigger the action should stay disabled until the merchant checks the box.

  ## Attributes

  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{}
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.InputFieldCheckboxInput do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.InputFieldCheckboxInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.InputFieldCheckboxInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end