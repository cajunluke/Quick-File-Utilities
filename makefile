all:
	xcodebuild -target qfc

fc:
	xcodebuild -target fc

install:
	xcodebuild install

clean: 
	xcodebuild clean
