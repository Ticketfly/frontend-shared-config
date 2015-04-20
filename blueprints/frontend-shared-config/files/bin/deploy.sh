export APPNAME=$1 || ""

if [ -z $APPNAME ]; then
  echo "Application name cannot be empty (deploy.sh <app name>)"
  exit 1
fi

echo "Building $APPNAME..."

BUILD=`ember build --environment=production`

if [ "$BUILD" == 0 ]; then
  echo "Build failed: $BUILD"
fi

echo "Checking if application $APPNAME exists"
echo "rhc app-show $APPNAME"

APP_EXISTS=`rhc app-show $APPNAME`

if [ "$APP_EXISTS" == 0 ]; then
  echo "$APPNAME does not exist. Creating..."
  rhc app create -a $APPNAME -t node â€“no-git
  rhc configure-app -a $APPNAME â€“no-auto-deploy
  rhc configure-app -a $APPNAME â€“deployment-type binary
else
  echo "$APPNAME already exists."
fi

echo "Deploying..."

TMP_PATH=$TMPDIR/repo

rm -rf $TMP_PATH && mkdir $TMP_PATH

cp -r .openshift/server.js node_modules/express dist $TMP_PATH
tar -C $TMPDIR -czvf $TMPDIR/openshift-upload.tgz repo
rhc deploy -a $APPNAME $TMPDIR/openshift-upload.tgz