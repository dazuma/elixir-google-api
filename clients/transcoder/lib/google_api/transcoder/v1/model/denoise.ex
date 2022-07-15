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

defmodule GoogleApi.Transcoder.V1.Model.Denoise do
  @moduledoc """
  Denoise preprocessing configuration. **Note:** This configuration is not supported.

  ## Attributes

  *   `strength` (*type:* `float()`, *default:* `nil`) - Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.
  *   `tune` (*type:* `String.t`, *default:* `nil`) - Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :strength => float() | nil,
          :tune => String.t() | nil
        }

  field(:strength)
  field(:tune)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.Denoise do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.Denoise.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.Denoise do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end