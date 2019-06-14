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

defmodule GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange do
  @moduledoc """
  Deprecated. See CompensationInfo.

  Compensation range.

  ## Attributes

  - max (GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t): Required.

  Maximum value. Defaults to `nil`.
  - min (GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t): Required.

  Minimum value. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :max => GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t(),
          :min => GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal.t()
        }

  field(:max, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal)
  field(:min, as: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoDecimal)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.ExtendedCompensationInfoCompensationRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
