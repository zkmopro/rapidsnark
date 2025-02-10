###

#Build targets
host:
	rm -rf build_prover && mkdir build_prover && cd build_prover && \
	cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
	make -j4 -vvv && make install

arm64_host:
	rm -rf build_prover && mkdir build_prover && cd build_prover && \
	cmake .. -DTARGET_PLATFORM=arm64_host -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
	make -j4 -vvv && make install

android:
	rm -rf build_prover_android && mkdir build_prover_android && cd build_prover_android && \
	cmake .. -DTARGET_PLATFORM=ANDROID -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
	make -j4 -vvv && make install

android_x86_64:
	rm -rf build_prover_android_x86_64 && mkdir build_prover_android_x86_64 && cd build_prover_android_x86_64 && \
	cmake .. -DTARGET_PLATFORM=ANDROID_x86_64 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
	make -j4 -vvv && make install

ios:
	rm -rf build_prover_ios && mkdir build_prover_ios && cd build_prover_ios && \
	cmake .. -DTARGET_PLATFORM=IOS -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
	make && make install

ios_simulator_arm64:
	rm -rf build_prover_ios_simulator_arm64 && mkdir build_prover_ios_simulator_arm64 && cd build_prover_ios_simulator_arm64 && \
	cmake .. -DTARGET_PLATFORM=IOS_SIMULATOR -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
    make && make install

ios_simulator_x86_64:
	rm -rf build_prover_ios_simulator_x86_64 && mkdir build_prover_ios_simulator_x86_64 && cd build_prover_ios_simulator_x86_64 && \
	cmake .. -DTARGET_PLATFORM=IOS_SIMULATOR_x86_64 -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=../package && \
    make && make install