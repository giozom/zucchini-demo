This is a demo project of Zucchini iOS visual testing framework.

## Running the demo on your device
 
  1. Download and compile Apple's sample [CoreDataBooks](http://developer.apple.com/library/ios/samplecode/CoreDataBooks/CoreDataBooks.zip) application onto your device.
  2. Add your device to features/support/config.yml. You can use the [udidetect](https://github.com/vaskas/udidetect) tool (`udidetect -z`) to grab the UDID. 
  3. Run it with `ZUCCHINI_DEVICE='<Your device name>' zucchini run zucchini-demo/features/`.