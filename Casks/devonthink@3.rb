cask "devonthink@3" do
  version "3.9.18"
  sha256 "ab574d12d7272a68252a7ecdeef62dbd4f0cbbacbfe965d8e05cf57bdec6977f"

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
