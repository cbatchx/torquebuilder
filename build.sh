#!/bin/bash
cd /compile && git clone https://github.com/dizk/torque.git -b 6.0.0.1 torque
cd /compile/torque && ./buildutils/torque-build -U
cp /compile/torque/buildutils/rpmbuild/RPMS/x86_64/* /artifacts