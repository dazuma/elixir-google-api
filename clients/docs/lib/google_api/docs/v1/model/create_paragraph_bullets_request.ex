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

defmodule GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest do
  @moduledoc """
  Creates bullets for all of the paragraphs that overlap with the given range. The nesting level of each paragraph will be determined by counting leading tabs in front of each paragraph. To avoid excess space between the bullet and the corresponding paragraph, these leading tabs are removed by this request. This may change the indices of parts of the text. If the paragraph immediately before paragraphs being updated is in a list with a matching preset, the paragraphs being updated are added to that preceding list.

  ## Attributes

  *   `bulletPreset` (*type:* `String.t`, *default:* `nil`) - The kinds of bullet glyphs to be used.
  *   `range` (*type:* `GoogleApi.Docs.V1.Model.Range.t`, *default:* `nil`) - The range to apply the bullet preset to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bulletPreset => String.t() | nil,
          :range => GoogleApi.Docs.V1.Model.Range.t() | nil
        }

  field(:bulletPreset)
  field(:range, as: GoogleApi.Docs.V1.Model.Range)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.CreateParagraphBulletsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
