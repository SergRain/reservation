FactoryGirl.define do
  factory :reservation do
    factory :first do
      table 1
      start_time "2015-05-28 18:28:35".to_datetime
      end_time "2015-05-28 20:28:35".to_datetime
    end
    factory :second do
      table 1
      start_time "2015-05-28 19:28:35".to_datetime
      end_time "2015-05-28 21:28:35".to_datetime
    end
    factory :third do
      table 1
      start_time "2015-05-28 18:30:00".to_datetime
      end_time "2015-05-28 19:00:00".to_datetime
    end
    factory :fourth do
      table 1
      start_time "2015-05-28 17:00:00".to_datetime
      end_time "2015-05-28 19:00:00".to_datetime
    end
    factory :fifth do
      table 1
      start_time "2015-05-28 17:00:00".to_datetime
      end_time "2015-05-28 22:00:00".to_datetime
    end
    factory :sixth do
      table 1
      start_time "2015-05-28 12:00:00".to_datetime
      end_time "2015-05-28 13:00:00".to_datetime
    end
    factory :seventh do
      table 2
      start_time "2015-05-28 12:00:00".to_datetime
      end_time "2015-05-28 13:00:00".to_datetime
    end
    factory :eighth do
      table 2
      start_time "2015-05-28 17:00:00".to_datetime
      end_time "2015-05-28 22:00:00".to_datetime
    end
    factory :ninth do
      table 2
      start_time "2015-05-28 12:30:00".to_datetime
      end_time "2015-05-28 17:30:00".to_datetime
    end
  end

end
