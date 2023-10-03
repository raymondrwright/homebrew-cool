cask "coooolbeanse" do
  version "1.0.0"
  sha256 "your-sha256-checksum-here"

  url "https://example.com/mysoftware_#{version}.dmg"
  name "My Software"
  desc "A brief description of My Software"
  homepage "https://mysoftwarewebsite.com"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/mysoftware_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "coooolbeans"
end
