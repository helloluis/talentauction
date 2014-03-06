class ProfessionalProfile < ActiveRecord::Base
  belongs_to :professional, inverse_of: :professional_profile

  def firstname
    'Leeroy'
  end

  def surname
    'Buenaventura'
  end

  def linkedin_url
    'http://linkedin.com/in/helloluis'
  end

  def location
    'NCR - National Capital Region, Philippines'
  end

  def educations
    ['University of the Philippines, Diliman', 'University of the Philippines Integrated School']
  end

  def experiences
    [
      {
        position: 'CEO',
        description: 'Privately-held company (1-10 Employees) in the
       Online Media Industry',
       duration: 'Feb 2010 - 2014'
      },
      {
        position: 'Director',
        description: 'Privately-held company (51-200 Employees) in the
        Information Technology and Services Industry',
        duration: 'Oct 2008 - Feb 2010'
      },
      {
        position: 'Owner',
        description: 'Privately-held company in the Internet Industry',
        duration: 'May 2005 - Oct 2007'
      }
    ]
  end

  def skills
    ['Ruby on Rails', 'User Interface Design', 'Ruby', 'PHP',
    'MySQL', 'AJAX', 'Flash', 'Graphic Design', 'Programming', 'Copywriting',
    'Web Development', 'jQuery', 'CSS', 'Web Design', 'Wordpress', 
    'Mobile Application', 'Start-ups']
  end
end
