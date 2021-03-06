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

defmodule GoogleApi.Dataflow.V1b3.Model.IntegerMean do
  @moduledoc """
  A representation of an integer mean metric contribution.

  ## Attributes

  *   `count` (*type:* `GoogleApi.Dataflow.V1b3.Model.SplitInt64.t`, *default:* `nil`) - The number of values being aggregated.
  *   `sum` (*type:* `GoogleApi.Dataflow.V1b3.Model.SplitInt64.t`, *default:* `nil`) - The sum of all values being aggregated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => GoogleApi.Dataflow.V1b3.Model.SplitInt64.t() | nil,
          :sum => GoogleApi.Dataflow.V1b3.Model.SplitInt64.t() | nil
        }

  field(:count, as: GoogleApi.Dataflow.V1b3.Model.SplitInt64)
  field(:sum, as: GoogleApi.Dataflow.V1b3.Model.SplitInt64)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.IntegerMean do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.IntegerMean.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.IntegerMean do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
