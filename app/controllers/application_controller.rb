class ApplicationController < ActionController::Base
    skip_before_action  :verify_authenticity_token
    before_action :print_display_message
    after_action :print_display_message_after

    def print_display_message
        puts "I am an inherited before action filter"
    end
    def print_display_message_after
        puts "i am inherited after action"
    end
end
