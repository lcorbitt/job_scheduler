class DashboardController < ApplicationController

    def index
        @all_leads = Lead.where.not(status: 5)
        @leads = Lead.where(status: 0)
        @prospects = Lead.where(status: 1)
        @approved = Lead.where(status: 2)
        @completed = Lead.where(status: 3)
        @invoiced = Lead.where(status: 4)

    end
end
