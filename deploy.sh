# This script is semi-automatic deployment script. It will create a build version of react app and upload it to server, to specified directory.

# NOTE: make sure this script is in the top directory of react app.

# Make sure to switch to main branch. Master or change it's name to whatever master branch is named
echo "Switching to branch master"
git checkout master

# Run npm script that builds a production version of react app
echo "Building the production version..."
npm run build

# Copy the build files to server. Change user and IP to whatever server is set up: <user>@<ip-addr>:<directory on server where app should be deployed>
echo "Deploying the build production to server..."
scp -r build/* <user>@<ip-addr>:<directory on server where app should be deployed>

echo "All done!"
