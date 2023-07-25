module ApplicationHelper
    def format_date_to_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def app_name
        "Crypto Wallet App"
    end
end
