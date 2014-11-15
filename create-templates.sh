export OUTPUT_DIR=/Users/sudhir/Projects/trials/spring-roo/addon-roo-sencha/src/main/resources/templates;
export REPLACE_PATTERN='s/seleroo/${app.name}/g;s/SenchaCrud/${app.name}/g;s/Employee/${entity.name}/g;s/employee/${entity.lowerCase}/g'
export CURRENT_DIR=`pwd`

echo DELETING ORG FILES
find $OUTPUT_DIR -name '*.js' | grep -v Custom |  xargs rm

for file in $(find app -name '*.js') app.js
do
        newfile=`echo $file | sed 's/Employee/Entity/g'`        
        echo $newfile
        sed $REPLACE_PATTERN $file >  $OUTPUT_DIR/$newfile
done
