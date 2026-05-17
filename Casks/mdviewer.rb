cask "mdviewer" do
  version "0.1.2"
  sha256 "0223df53ed21d2235ded160767819edc9063f9703acabc68f59d9b5e7f92f449"

  url "https://github.com/ploutonconsulting/md_viewer/releases/download/v#{version}/MDViewer-#{version}.zip"
  name "MD Viewer"
  desc "Native macOS markdown viewer"
  homepage "https://github.com/ploutonconsulting/md_viewer"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "MDViewer.app"

  zap trash: [
    "~/Library/Preferences/com.ploutonconsulting.mdviewer.plist",
    "~/Library/Application Support/MDViewer",
    "~/Library/Saved Application State/com.ploutonconsulting.mdviewer.savedState",
  ]
end
