# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.CustomDimension do
  @moduledoc """
  Custom dimension.

  ## Attributes

  - index (integer()): Slot number of custom dimension. Defaults to `nil`.
  - value (String.t): Value of the custom dimension. Default value (i.e. empty string) indicates
  clearing sesion/visitor scope custom dimension value. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => integer(),
          :value => String.t()
        }

  field(:index)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.CustomDimension do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.CustomDimension.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.CustomDimension do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
