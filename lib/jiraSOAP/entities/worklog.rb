##
# Contains the data and metadata for a remote worklog.
class JIRA::Worklog < JIRA::DescribedEntity

  # @return [String]
  add_attribute :comment, 'comment', :content

  # @return [Time]
  add_attribute :start_date, 'startDate', :to_iso_date

  # @return [String]
  add_attribute :time_spent, 'timeSpent', :content

  # @param [Handsoap::XmlMason::Node] msg
  # @return [Handsoap::XmlMason::Node]
  def soapify_for msg
    msg.add 'comment', @comment
    msg.add 'startDate', @start_date
    msg.add 'timeSpent', @time_spent
  end

end
