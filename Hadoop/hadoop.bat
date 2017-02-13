::cancelamos el echo para que no moleste
 @echo off
::Create filder in User Folder
set PathHadoop="C:%HOMEPATH%\hadoop"
echo "Creando Directorio";

MD %PathHadoop%


cd %PathHadoop%
::Moviendonos al directorio
echo %cd%
git clone git://git.apache.org/hadoop-common.git
set PathHadoopcommon="%PathHadoop%\hadoop-common"
cd %PathHadoopcommon%
git checkout branch-2.5
mvn package -Pdist,native-win -DskipTests -Dtar