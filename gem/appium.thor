class Appium < Thor::Group
  include Thor::Actions
 
  desc "create skeleton in directory NAME for project PATH"
  # Define arguments and options
  argument :project_name, :desc => 'directory to be generated'
  argument :path, :desc => 'path to ios project .xcworkspace'
 
  def name
    File.basename(path,'.*')
  end

  def self.source_root
    File.dirname(__FILE__)
  end
 
  def create_folders
    directory "templates", project_name
  end
  
  def notice
    puts "Next steps:"
    puts "$: cd #{project_name}"
    puts "$: bundle"
    puts "$: ./build-app"
    puts "$: bundle exec foreman start"
    puts "$: bundle exec rspec spec/"
  end

end
