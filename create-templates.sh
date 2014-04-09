export OUTPUT_DIR=./outputallfiles;
export REPLACE_PATTERN='s/seleroo/${app.name}/g;s/SenchaCrud/${app.name}/g;s/Employee/${entity.name}/g;s/employee/${entity.lowerCase}/g'

mkdir -p $OUTPUT_DIR/app
mkdir -p $OUTPUT_DIR/app/model
mkdir -p $OUTPUT_DIR/app/view
mkdir -p $OUTPUT_DIR/app/controller
mkdir -p $OUTPUT_DIR/app/store
mkdir -p $OUTPUT_DIR/app/form
mkdir -p $OUTPUT_DIR/resources/css

for file in $(find app -name '*.js') app.js
do
        newfile=`echo $file | sed 's/Employee/Entity/g'`        
        echo $newfile
        sed $REPLACE_PATTERN $file >  $OUTPUT_DIR/$newfile
done
