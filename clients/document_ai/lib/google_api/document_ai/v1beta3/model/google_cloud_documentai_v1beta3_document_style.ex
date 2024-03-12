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

defmodule GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyle do
  @moduledoc """
  Annotation for common text style attributes. This adheres to CSS conventions as much as possible.

  ## Attributes

  *   `backgroundColor` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleTypeColor.t`, *default:* `nil`) - Text background color.
  *   `color` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleTypeColor.t`, *default:* `nil`) - Text color.
  *   `fontFamily` (*type:* `String.t`, *default:* `nil`) - Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  *   `fontSize` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.t`, *default:* `nil`) - Font size.
  *   `fontWeight` (*type:* `String.t`, *default:* `nil`) - [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  *   `textAnchor` (*type:* `GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.t`, *default:* `nil`) - Text anchor indexing into the Document.text.
  *   `textDecoration` (*type:* `String.t`, *default:* `nil`) - [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard. 
  *   `textStyle` (*type:* `String.t`, *default:* `nil`) - [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColor => GoogleApi.DocumentAI.V1beta3.Model.GoogleTypeColor.t() | nil,
          :color => GoogleApi.DocumentAI.V1beta3.Model.GoogleTypeColor.t() | nil,
          :fontFamily => String.t() | nil,
          :fontSize =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.t()
            | nil,
          :fontWeight => String.t() | nil,
          :textAnchor =>
            GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextAnchor.t()
            | nil,
          :textDecoration => String.t() | nil,
          :textStyle => String.t() | nil
        }

  field(:backgroundColor, as: GoogleApi.DocumentAI.V1beta3.Model.GoogleTypeColor)
  field(:color, as: GoogleApi.DocumentAI.V1beta3.Model.GoogleTypeColor)
  field(:fontFamily)

  field(:fontSize,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyleFontSize
  )

  field(:fontWeight)

  field(:textAnchor,
    as: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentTextAnchor
  )

  field(:textDecoration)
  field(:textStyle)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyle do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyle.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1beta3.Model.GoogleCloudDocumentaiV1beta3DocumentStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
