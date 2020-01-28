module ApplicationHelper

    def readable_time(time)
        time.strftime("%b %d, %I:%M%P")
    end

    def author_of(record)
        user_signed_in? && current_user.id == record.user_id
    end

    def admin?
        user_signed_in? && current_user.admin?
    end

    def readable_status(s)
        case s
        when 0
            "Lead"
        when 1
            "Prospect"
        when 2
            "Approved"
        when 3
            "Completed"
        when 4
            "Invoiced"
        when 5
            "Closed"
        end
    end

    def next_step(s)
        case s
        when 0
            "Convert to Prospect"
        when 1
            "Convert to Approved"
        when 2
            "Convert to Completed"
        when 3
            "Convert to Invoiced"
        when 4
            "Close"
        end
    end

    def full_name(user)
        return "#{user.first_name}  #{user.last_name}"
    end

    def to_name(id)
        @user = User.find(id)
        full_name(@user)
    end

end
