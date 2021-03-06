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

defmodule GoogleApi.CustomSearch.V1.Model.PromotionBodyLines do
  @moduledoc """
  Block object belonging to a promotion.

  ## Attributes

  *   `htmlTitle` (*type:* `String.t`, *default:* `nil`) - The block object's text in HTML, if it has text.
  *   `link` (*type:* `String.t`, *default:* `nil`) - The anchor text of the block object's link, if it has a link.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The block object's text, if it has text.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The URL of the block object's link, if it has one.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :htmlTitle => String.t() | nil,
          :link => String.t() | nil,
          :title => String.t() | nil,
          :url => String.t() | nil
        }

  field(:htmlTitle)
  field(:link)
  field(:title)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.CustomSearch.V1.Model.PromotionBodyLines do
  def decode(value, options) do
    GoogleApi.CustomSearch.V1.Model.PromotionBodyLines.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CustomSearch.V1.Model.PromotionBodyLines do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
