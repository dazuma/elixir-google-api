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

defmodule GoogleApi.Transcoder.V1beta1.Model.SegmentSettings do
  @moduledoc """
  Segment settings for `"ts"`, `"fmp4"` and `"vtt"`.

  ## Attributes

  *   `individualSegments` (*type:* `boolean()`, *default:* `nil`) - Required. Create an individual segment file. The default is `false`.
  *   `segmentDuration` (*type:* `String.t`, *default:* `nil`) - Duration of the segments in seconds. The default is `"6.0s"`. Note that `segmentDuration` must be greater than or equal to [`gopDuration`](#videostream), and `segmentDuration` must be divisible by [`gopDuration`](#videostream).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :individualSegments => boolean() | nil,
          :segmentDuration => String.t() | nil
        }

  field(:individualSegments)
  field(:segmentDuration)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1beta1.Model.SegmentSettings do
  def decode(value, options) do
    GoogleApi.Transcoder.V1beta1.Model.SegmentSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1beta1.Model.SegmentSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end