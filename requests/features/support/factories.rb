FactoryBot.define do 

    factory :user, class: User do
        id { "1" }
        email { "user@ait.asia" }
        password { 'password' }
        password_confirmation { 'password' }
    end

    factory :request do
        id{"2"} 
        location {"Hyderabad"}
        complain {"i have a complain"}
        Date {"2018-11-19"}
        nature {"random"}
        user_id {"1"}
    end

end