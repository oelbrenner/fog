module Fog
  module Parsers
    module AWS
      module DNS

        class GetChange < Fog::Parsers::Base

          def reset
            @response = {}
          end
          
          def end_element(name)
            case name
            when 'Id', 'Status', 'SubmittedAt'
              @response[name] = @value
            end
          end

        end

      end
    end
  end
end
