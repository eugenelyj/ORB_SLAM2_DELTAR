ROOT=''
python scripts/associate.py ${ROOT}/rgb.txt ${ROOT}/depth.txt > ${ROOT}/associations.txt
./Examples/RGB-D/rgbd_realsense Vocabulary/ORBvoc.txt Examples/RGB-D/realsense.yaml ${ROOT} ${ROOT}/associations.txt
mv KeyFrameTrajectory.txt CameraTrajectory.txt MapPoint.txt -t ${ROOT}