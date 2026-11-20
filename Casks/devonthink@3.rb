cask "devonthink@3" do
  version "3.9.18"
  sha256 "208050a5c16fe2b96b6c68e6f3603aa8e196b3fc9ba0c96944489b5fd14d23de"

  url "https://download.devontechnologies.com/download/devonthink/#{version}/DEVONthink_#{version.major}.app.zip"
  name "DEVONthink 3"
  desc "Collect, organise, edit and annotate documents"
  homepage "https://www.devontechnologies.com/apps/devonthink"

  livecheck do
    skip "Legacy version"
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DEVONthink 3.app"
end
