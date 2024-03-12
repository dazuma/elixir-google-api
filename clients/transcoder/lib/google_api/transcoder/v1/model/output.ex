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

defmodule GoogleApi.Transcoder.V1.Model.Output do
  @moduledoc """
  Location of output file(s) in a Cloud Storage bucket.

  ## Attributes

  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty, the value is populated from Job.output_uri. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :uri => String.t() | nil
        }

  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.Output do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.Output.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.Output do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
