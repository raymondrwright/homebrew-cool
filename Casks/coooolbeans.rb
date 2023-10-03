cask "coooolbeanse" do
  version "1.0.0"
  sha256 "your-sha256-checksum-here"

  url "https://example.com/mysoftware_#{version}.dmg"
  name "coooolbeans"
  desc "basic softwear"
  homepage "https://coolbeans.com"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/mysoftware_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "coooolbeans"
end
