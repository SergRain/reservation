class Reservation < ActiveRecord::Base
  
  validate :is_reversable

  scope :empty_table_scope, ->(start_time, end_time, table){where "`table` = ? and ((start_time < ?) and (end_time > ?))", table, end_time, start_time}

  def table_free?
    empty_table.exists?
  end

  def empty_table
    Reservation.empty_table_scope(start_time, end_time, table)
  end

  def is_reversable
    errors.add(:key, 'Table is reserved') if table_free?
  end
end
