=begin
  This file is part of Viewpoint; the Ruby library for Microsoft Exchange Web Services.

  Copyright © 2011 Dan Wanek <dan.wanek@gmail.com>

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
=end

module Viewpoint::EWS::Types

  # This represents a Mailbox object in the Exchange data store
  # @see http://msdn.microsoft.com/en-us/library/aa565036.aspx MSDN docs
  # @todo Design a Class method that resolves to an Array of MailboxUsers
  class Attendee < MailboxUser

    ATTENDEE_KEY_PATHS = {
      response_type: [:response_type, :text]
    }

    private

    def key_paths
      @key_paths ||= super.merge(ATTENDEE_KEY_PATHS)
    end

  end # Attendee

end # Viewpoint::EWS::Types
