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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTokenStyleInfo do
  @moduledoc """
  Font and other text style attributes.

  ## Attributes

  *   `backgroundColor` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleTypeColor.t`, *default:* `nil`) - Color of the background.
  *   `bold` (*type:* `boolean()`, *default:* `nil`) - Whether the text is bold (equivalent to font_weight is at least `700`).
  *   `fontSize` (*type:* `integer()`, *default:* `nil`) - Font size in points (`1` point is `¹⁄₇₂` inches).
  *   `fontType` (*type:* `String.t`, *default:* `nil`) - Name or style of the font.
  *   `fontWeight` (*type:* `integer()`, *default:* `nil`) - TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  *   `handwritten` (*type:* `boolean()`, *default:* `nil`) - Whether the text is handwritten.
  *   `italic` (*type:* `boolean()`, *default:* `nil`) - Whether the text is italic.
  *   `letterSpacing` (*type:* `float()`, *default:* `nil`) - Letter spacing in points.
  *   `pixelFontSize` (*type:* `float()`, *default:* `nil`) - Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  *   `smallcaps` (*type:* `boolean()`, *default:* `nil`) - Whether the text is in small caps.
  *   `strikeout` (*type:* `boolean()`, *default:* `nil`) - Whether the text is strikethrough.
  *   `subscript` (*type:* `boolean()`, *default:* `nil`) - Whether the text is a subscript.
  *   `superscript` (*type:* `boolean()`, *default:* `nil`) - Whether the text is a superscript.
  *   `textColor` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleTypeColor.t`, *default:* `nil`) - Color of the text.
  *   `underlined` (*type:* `boolean()`, *default:* `nil`) - Whether the text is underlined.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backgroundColor => GoogleApi.DocumentAI.V1.Model.GoogleTypeColor.t() | nil,
          :bold => boolean() | nil,
          :fontSize => integer() | nil,
          :fontType => String.t() | nil,
          :fontWeight => integer() | nil,
          :handwritten => boolean() | nil,
          :italic => boolean() | nil,
          :letterSpacing => float() | nil,
          :pixelFontSize => float() | nil,
          :smallcaps => boolean() | nil,
          :strikeout => boolean() | nil,
          :subscript => boolean() | nil,
          :superscript => boolean() | nil,
          :textColor => GoogleApi.DocumentAI.V1.Model.GoogleTypeColor.t() | nil,
          :underlined => boolean() | nil
        }

  field(:backgroundColor, as: GoogleApi.DocumentAI.V1.Model.GoogleTypeColor)
  field(:bold)
  field(:fontSize)
  field(:fontType)
  field(:fontWeight)
  field(:handwritten)
  field(:italic)
  field(:letterSpacing)
  field(:pixelFontSize)
  field(:smallcaps)
  field(:strikeout)
  field(:subscript)
  field(:superscript)
  field(:textColor, as: GoogleApi.DocumentAI.V1.Model.GoogleTypeColor)
  field(:underlined)
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTokenStyleInfo do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTokenStyleInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1beta1DocumentPageTokenStyleInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
