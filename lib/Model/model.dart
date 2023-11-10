import "package:flutter/material.dart";

class JsonModel extends ChangeNotifier {
  dynamic headphone = [
    {
      "id": 1,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/Corsair/hs80-rgb-usb/hs80-rgb-usb-01-500x500.webp",
      "name": "Corsair HS80 RGB USB Wired Gaming Headphone",
      "des":
          'The Corsair HS80 RGB USB Wired Gaming Headphone has 50mm speakers with a frequency range of 20Hz to 40kHz, ensuring crystal-clear audio and deep bass. The headphone also includes a Dolby Audio function, which improves soundstage and spatial awareness in games. The microphone is omnidirectional, so it can pick up your voice from any angle, and it has a frequency response of 100Hz to 10kHz, making it excellent for clear conversation. The microphone has a sensitivity of -40dB, allowing it to filter out surrounding noise while focusing on your voice. The HS80 RGB USB Gaming Headphone offers a USB interface for connecting to your PC and a 1.8m cable length for mobility. The RGB lighting on the headphones may also be modified to match your style and mood. The HS80 RGB USB headphone weighs 0.916 kg, which is tiny for its size, and has a 32k Ohm impedance, allowing it to function with most audio sources without distortion. The headphone is comfy and long-lasting, with soft ear cushions and an adjustable headband. The Corsair HS80 RGB Wired Gaming Headphone is a great choice for gamers desiring a realistic and immersive audio experience.',
      "spec": 'MPN: CA-9011237-AP / CA-9011238-AP\nModel: HS80 RGB USB\nmpedance: 32k Ohms, Drivers: 50mm\nFrequency: 20Hz - 40kHz\nMicrophone Type: Omni-directional\nDolby Audio, Surround Sound',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 33, 4: 67, 5: 55},
      "price": 2000,
      "cart": 1,
      "brand_logo": 'https://w7.pngwing.com/pngs/631/322/png-transparent-lenovo-logo-laptop-lenovo-thinkpad-thinkpad-x1-carbon-intel-dell-lenovo-logo-electronics-text-rectangle-thumbnail.png',
    },
    {
      "id": 2,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/edifier/hecate-g30s/hecate-g30s-03-500x500.webp",
      "name": "Edifier Hecate G30s Dual-Mode Wireless Gaming Headset",
      "des":
          'The Edifier Hecate G30s Dual-Mode Wireless Gaming Headset comes with a Bluetooth 5.3 stable connection, and a 2.4GHz connection with about 15ms ultra-low latency to deliver a smooth experience. It can connect PCs, laptops, PS4, PS5 and other devices. The headphones give more gaming experience and utilization situations for gamers. Edifier Hecate G30s Gaming Headset provides clear treble, and impressive bass bringing a vivid gaming experience. Also, it can provide easy switching for ultimate enjoyment.',
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 95, 2: 6, 3: 33, 4: 4, 5: 45},
      "price": 5800,
      "cart": 1,
    },
    {
      "id": 3,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/hoco/w106/w106-01-500x500.webp",
      "name": "Hoco W106 Tiger Gaming Headphone",
      "des":
          "The Hoco W106 Tiger Gaming Headphone showcases a compact and ergonomic design constructed from quality materials, ensuring comfort during extended usage. The Hoco W106 has a 50mm speaker, a microphone size of Φ6.0×2.7mm. With its excellent playback quality, it delivers an immersive music experience. The Hoco W106 Tiger Gaming Headphone utilize a 3.5mm jack for connectivity and feature an omnidirectional microphone for clear voice communication. The Hoco W106 Headphone headphones offer convenient volume control. The Hoco W106 Tiger Gaming Headphone includes a 2-in-1 audio adapter, enabling the cable to be used with PCs or laptops equipped with dual audio ports.",
      "spec": 'Model: W106\nSpeaker: 50mm\nMicrophone: Φ6.0×2.7mm\nVolume Control\nInterface: 3.5mm',
      "isFavourite": false,
      "rate": {1: 45, 2: 5, 3: 3, 4: 6, 5: 58},
      "price": 999,
      "cart": 1,
    },
    {
      "id": 4,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/a4tech/mc750/mc750-01-500x500.webp",
      "name": "A4tech Bloody MC750 ANC RGB USB Gaming Headphone",
      "des":
          "The A4tech Bloody MC750 Gaming Headphone has a hybrid active noise canceling technology that can effectively isolate background noise by using a dual-chamber airflow reining speaker. This headphone gives you a competitive gaming advantage using the 50mm M.O.C.I. Hybrid Diaphragm Technology which combines carbomer and cultivated mycelium in a cutting-edge biotechnology product. The signature sound of A4tech Bloody MC750 headphone, which delivers a performance that gives you a competitive gaming advantage by projecting clear trebles, a deep, fulfilling bass, and a midrange. An original RGB flowing lights ring featuring the highlights of the gaming environment Superior comfort ear cushions support your concentration while gaming. Ergonomically built A4tech Bloody MC750 Gaming Headphone to match your head's specific contours for comfortable all-day usage, the softly padded, adjustable flying wing headband Simplify gameplay with the controller, which also guarantees clear, booming voice chats.",
      "spec": 'Model: MC750\nActive Noise Cancelling\nHeadphone Frequency: 20Hz-20KHz\n50mm M.O.C.I. Hybrid Diaphragm Technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 3, 4: 67, 5: 5},
      "price": 5700,
      "cart": 1,
    },
    {
      "id": 5,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/fantech/mars-ii-hq54/mars-ii-hq54-01-500x500.webp",
      "name": "Fantech MARS II HQ54 Wired Gaming Headset",
      "des":
          "The Fantech MARS II HQ54 Wired Gaming Headset comes with a 3.5 mm Jack and a 3.5mm input jack. The headphone has a 40 mm driver diameter and a noise canceling feature that can handle unwanted sound to remove during game time or listening music or calling. With the -38 ± 2dB sensitivity you can get best gaming performance. The MARS II HQ54 has In-Line audio control ability and multi-perform compatibility. The head phone designed with Omni Directivity. Fantech MARS II HQ54 Headset is the best choise for the gamer.",
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 33, 4: 67, 5: 55},
      "price": 850,
      "cart": 1,
    },
    {
      "id": 6,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/awei/es-770i/es-770i-01-500x500.webp",
      "name": "AWEI ES-770i Over-Ear Gaming Headset",
      "des":
          "The AWEI ES-770i Over-Ear Gaming Headset is equipped with a 50mm driver unit for powerful audio delivery. Boasting a sensitivity level exceeding 110dB and an impedance of 20 ohms, it ensures dynamic and immersive sound. With a frequency response range spanning from 20Hz to 2000Hz, the headset captures a wide spectrum of audio details. Its operating temperature range is between -10°C and 50°C, ensuring reliable performance in various conditions. The AWEI ES-770i headset can be powered through a USB input of 5V, and it features both a 3.5mm and USB connector for versatile connectivity. The headset's stylish design is enhanced by the presence of cool atmosphere lights, adding to the overall gaming experience. The AWEI ES-770i headset comes with a cable length of 2.1 meters, providing flexibility in movement during gaming sessions.",
      "spec": '''Model: ES-770i\nDriver Unit: 50mm\nSensitivity:>110dB\nImpedance: 20 ohm\n3.5mm & USB Connector''',
      "isFavourite": false,
      "rate": {1: 5, 2: 56, 3: 33, 4: 967, 5: 55},
      "price": 1299,
      "cart": 1,
    },
    {
      "id": 7,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/joyroom/w105-joyful/w105-joyful-02-500x500.jpg",
      "name": "Hoco W105 Joyful Gaming Headphone",
      "des":
          "The W105 Joyful gaming headphones have a USB + 3.5mm connection port. This headset includes a 6.0x2.2mm microphone. This headset has a 2-meter cord and a multicolored LED breathing light effect. It comes with a 2-in-1 audio adapter cable that may be used with twin audio ports on desktop PCs or laptops. You can speak with your colleagues rapidly on the battlefield. You have an advantage over your opponents in competitive fighting. The Hoco W105 Joyful Gaming Headphone comes with no warranty.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 46, 3: 33, 4: 67, 5: 595},
      "price": 1399,
      "cart": 1,
    },
    {
      "id": 8,
      "img":
          "https://www.startech.com.bd/image/cache/catalog/headphone/jabra/evolve2-50-ms/evolve2-50-ms-01-500x500.webp",
      "name": "Jabra Evolve2 50 MS Stereo USB-A Headset",
      "des":
          "Jabra Evolve2 50 MS Stereo USB-A Headset is a premium headset with excellent sound quality and comfort for both work and play. With its active noise cancellation (ANC) technology, it has a binaural design that covers both ears and shuts out background sounds. It also has a noise cancellation (NC) microphone for clean and crisp audio calls. The Jabra Evolve2 50 MS Stereo USB-A Headset may be connected to your notebook, PC, smartphone, or tablet through Bluetooth or USB Type-A. It also has a Microsoft Teams certification, which allows you to launch the app with a one tap. Jabra Evolve2 50 MS Stereo USB-A Headset offers a slim and ergonomic design that fits comfortably over your ears. It weighs about 0.149 kg and is available in a trendy black color.",
      "spec": 'MPN: 25089-999-999\nModel: Evolve2 50 MS\nDriver Unit: 28mm\nBuilt-in microphone\nActive noise-cancellation (ANC)\nSound Mode: Stereo / Mono',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 335, 4: 697, 5: 595},
      "price": 16700,
      "cart": 1,
    },
  ];
  dynamic keyboard = [
    {
      "id": 9,
      "img": "https://www.startech.com.bd/image/cache/catalog/keyboard/aula/ac202/ac202-01-228x228.webp",
      "name": "A4tech Bloody S510R RGB Wired Mechanical Gaming Keyboard",
      "des":
      'The Corsair HS80 RGB USB Wired Gaming Headphone has 50mm speakers with a frequency range of 20Hz to 40kHz, ensuring crystal-clear audio and deep bass. The headphone also includes a Dolby Audio function, which improves soundstage and spatial awareness in games. The microphone is omnidirectional, so it can pick up your voice from any angle, and it has a frequency response of 100Hz to 10kHz, making it excellent for clear conversation. The microphone has a sensitivity of -40dB, allowing it to filter out surrounding noise while focusing on your voice. The HS80 RGB USB Gaming Headphone offers a USB interface for connecting to your PC and a 1.8m cable length for mobility. The RGB lighting on the headphones may also be modified to match your style and mood. The HS80 RGB USB headphone weighs 0.916 kg, which is tiny for its size, and has a 32k Ohm impedance, allowing it to function with most audio sources without distortion. The headphone is comfy and long-lasting, with soft ear cushions and an adjustable headband. The Corsair HS80 RGB Wired Gaming Headphone is a great choice for gamers desiring a realistic and immersive audio experience.',
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 33, 4: 67, 5: 55},
      "price": 1100,
      "cart": 1,
      "brand_logo": "https://w7.pngwing.com/pngs/494/444/png-transparent-nec-pc-engine-hucard-hd-logo-thumbnail.png",
    },
    {
      "id": 10,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/aula/solakaka-k81/solakaka-k81-01-228x228.webp",
      "name": "Havit KB271 USB Exquisite Keyboard with Bangla",
      "des":
      'The Edifier Hecate G30s Dual-Mode Wireless Gaming Headset comes with a Bluetooth 5.3 stable connection, and a 2.4GHz connection with about 15ms ultra-low latency to deliver a smooth experience. It can connect PCs, laptops, PS4, PS5 and other devices. The headphones give more gaming experience and utilization situations for gamers. Edifier Hecate G30s Gaming Headset provides clear treble, and impressive bass bringing a vivid gaming experience. Also, it can provide easy switching for ultimate enjoyment.',
      "spec": 'Model: MC750\nActive Noise Cancelling\nHeadphone Frequency: 20Hz-20KHz\n50mm M.O.C.I. Hybrid Diaphragm Technology',
      "isFavourite": false,
      "rate": {1: 95, 2: 6, 3: 33, 4: 4, 5: 45},
      "price": 5800,
      "cart": 1,
    },
    {
      "id": 11,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/a4-tech/bloody-s510r/bloody-s510r-228x228.webp",
      "name": "Aula SOLAKAKA K81 RGB Hot-Swappable Mechanical Gaming Keyboard",
      "des":
      "The Hoco W106 Tiger Gaming Headphone showcases a compact and ergonomic design constructed from quality materials, ensuring comfort during extended usage. The Hoco W106 has a 50mm speaker, a microphone size of Φ6.0×2.7mm. With its excellent playback quality, it delivers an immersive music experience. The Hoco W106 Tiger Gaming Headphone utilize a 3.5mm jack for connectivity and feature an omnidirectional microphone for clear voice communication. The Hoco W106 Headphone headphones offer convenient volume control. The Hoco W106 Tiger Gaming Headphone includes a 2-in-1 audio adapter, enabling the cable to be used with PCs or laptops equipped with dual audio ports.",
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 45, 2: 5, 3: 3, 4: 6, 5: 58},
      "price": 999,
      "cart": 1,
    },
    {
      "id": 12,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/havit/kb271/kb271-01-228x228.jpg",
      "name": "Aula AC202 Wireless Keyboard & Mouse Combo",
      "des":
      "The A4tech Bloody MC750 Gaming Headphone has a hybrid active noise canceling technology that can effectively isolate background noise by using a dual-chamber airflow reining speaker. This headphone gives you a competitive gaming advantage using the 50mm M.O.C.I. Hybrid Diaphragm Technology which combines carbomer and cultivated mycelium in a cutting-edge biotechnology product. The signature sound of A4tech Bloody MC750 headphone, which delivers a performance that gives you a competitive gaming advantage by projecting clear trebles, a deep, fulfilling bass, and a midrange. An original RGB flowing lights ring featuring the highlights of the gaming environment Superior comfort ear cushions support your concentration while gaming. Ergonomically built A4tech Bloody MC750 Gaming Headphone to match your head's specific contours for comfortable all-day usage, the softly padded, adjustable flying wing headband Simplify gameplay with the controller, which also guarantees clear, booming voice chats.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 3, 4: 67, 5: 5},
      "price": 5700,
      "cart": 1,
    },
    {
      "id": 13,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/astrum/kb080/kb080-01-228x228.jpg",
      "name": "Astrum KB080 USB Wired Slim Keyboardt",
      "des":
      "The Fantech MARS II HQ54 Wired Gaming Headset comes with a 3.5 mm Jack and a 3.5mm input jack. The headphone has a 40 mm driver diameter and a noise canceling feature that can handle unwanted sound to remove during game time or listening music or calling. With the -38 ± 2dB sensitivity you can get best gaming performance. The MARS II HQ54 has In-Line audio control ability and multi-perform compatibility. The head phone designed with Omni Directivity. Fantech MARS II HQ54 Headset is the best choise for the gamer.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 33, 4: 67, 5: 55},
      "price": 850,
      "cart": 1,
    },
    {
      "id": 14,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/micropack/k203/k203-228x228.jpg",
      "name": "HAVIT KB224 USB Mini Keyboard",
      "des":
      "The AWEI ES-770i Over-Ear Gaming Headset is equipped with a 50mm driver unit for powerful audio delivery. Boasting a sensitivity level exceeding 110dB and an impedance of 20 ohms, it ensures dynamic and immersive sound. With a frequency response range spanning from 20Hz to 2000Hz, the headset captures a wide spectrum of audio details. Its operating temperature range is between -10°C and 50°C, ensuring reliable performance in various conditions. The AWEI ES-770i headset can be powered through a USB input of 5V, and it features both a 3.5mm and USB connector for versatile connectivity. The headset's stylish design is enhanced by the presence of cool atmosphere lights, adding to the overall gaming experience. The AWEI ES-770i headset comes with a cable length of 2.1 meters, providing flexibility in movement during gaming sessions.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 5, 2: 56, 3: 33, 4: 967, 5: 55},
      "price": 1299,
      "cart": 1,
    },
    {
      "id": 15,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/fantech/k210-silent/k210-silent-228x228.jpg",
      "name": "PROLiNK PKCS-1008 Classic Wired Keyboard",
      "des":
      "The W105 Joyful gaming headphones have a USB + 3.5mm connection port. This headset includes a 6.0x2.2mm microphone. This headset has a 2-meter cord and a multicolored LED breathing light effect. It comes with a 2-in-1 audio adapter cable that may be used with twin audio ports on desktop PCs or laptops. You can speak with your colleagues rapidly on the battlefield. You have an advantage over your opponents in competitive fighting. The Hoco W105 Joyful Gaming Headphone comes with no warranty.",
      "spec": 'MPN: CA-9011237-AP / CA-9011238-AP\nModel: HS80 RGB USB\nmpedance: 32k Ohms, Drivers: 50mm\nFrequency: 20Hz - 40kHz\nMicrophone Type: Omni-directional\nDolby Audio, Surround Sound',
      "isFavourite": false,
      "rate": {1: 845, 2: 46, 3: 33, 4: 67, 5: 595},
      "price": 1399,
      "cart": 1,
    },
    {
      "id": 16,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/keyboard/redragon/a101w/a101w-1-228x228.jpg",
      "name": "Redragon A101W Keyboard Keycaps",
      "des":
      "Jabra Evolve2 50 MS Stereo USB-A Headset is a premium headset with excellent sound quality and comfort for both work and play. With its active noise cancellation (ANC) technology, it has a binaural design that covers both ears and shuts out background sounds. It also has a noise cancellation (NC) microphone for clean and crisp audio calls. The Jabra Evolve2 50 MS Stereo USB-A Headset may be connected to your notebook, PC, smartphone, or tablet through Bluetooth or USB Type-A. It also has a Microsoft Teams certification, which allows you to launch the app with a one tap. Jabra Evolve2 50 MS Stereo USB-A Headset offers a slim and ergonomic design that fits comfortably over your ears. It weighs about 0.149 kg and is available in a trendy black color.",
      "spec": 'MPN: 25089-999-999\nModel: Evolve2 50 MS\nDriver Unit: 28mm\nBuilt-in microphone\nActive noise-cancellation (ANC)\nSound Mode: Stereo / Mono',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 335, 4: 697, 5: 595},
      "price": 16700,
      "cart": 1,
    },
  ];
  dynamic mouse = [
    {
      "id": 17,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/havit/ms851/ms851-1-228x228.jpg",
      "name": "Havit MS851 USB Mouse",
      "des":
      'The Corsair HS80 RGB USB Wired Gaming Headphone has 50mm speakers with a frequency range of 20Hz to 40kHz, ensuring crystal-clear audio and deep bass. The headphone also includes a Dolby Audio function, which improves soundstage and spatial awareness in games. The microphone is omnidirectional, so it can pick up your voice from any angle, and it has a frequency response of 100Hz to 10kHz, making it excellent for clear conversation. The microphone has a sensitivity of -40dB, allowing it to filter out surrounding noise while focusing on your voice. The HS80 RGB USB Gaming Headphone offers a USB interface for connecting to your PC and a 1.8m cable length for mobility. The RGB lighting on the headphones may also be modified to match your style and mood. The HS80 RGB USB headphone weighs 0.916 kg, which is tiny for its size, and has a 32k Ohm impedance, allowing it to function with most audio sources without distortion. The headphone is comfy and long-lasting, with soft ear cushions and an adjustable headband. The Corsair HS80 RGB Wired Gaming Headphone is a great choice for gamers desiring a realistic and immersive audio experience.',
      "spec": 'MPN: CA-9011237-AP / CA-9011238-AP\nModel: HS80 RGB USB\nmpedance: 32k Ohms, Drivers: 50mm\nFrequency: 20Hz - 40kHz\nMicrophone Type: Omni-directional\nDolby Audio, Surround Sound',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 33, 4: 67, 5: 55},
      "price": 1150,
      "cart": 1,
    },
    {
      "id": 18,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/havit/hv-ms689/hv-ms689-01-228x228.jpg",
      "name": "Havit HV-MS689 USB Optical Mouse",
      "des":
      'The Edifier Hecate G30s Dual-Mode Wireless Gaming Headset comes with a Bluetooth 5.3 stable connection, and a 2.4GHz connection with about 15ms ultra-low latency to deliver a smooth experience. It can connect PCs, laptops, PS4, PS5 and other devices. The headphones give more gaming experience and utilization situations for gamers. Edifier Hecate G30s Gaming Headset provides clear treble, and impressive bass bringing a vivid gaming experience. Also, it can provide easy switching for ultimate enjoyment.',
      "spec": 'Model: MC750\nActive Noise Cancelling\nHeadphone Frequency: 20Hz-20KHz\n50mm M.O.C.I. Hybrid Diaphragm Technology',
      "isFavourite": false,
      "rate": {1: 95, 2: 6, 3: 33, 4: 4, 5: 45},
      "price": 5800,
      "cart": 1,
    },
    {
      "id": 19,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/xtreme/m288/m288-01-228x228.webp",
      "name": "Xtreme M288 USB Wired Optical Mouse",
      "des":
      "The Hoco W106 Tiger Gaming Headphone showcases a compact and ergonomic design constructed from quality materials, ensuring comfort during extended usage. The Hoco W106 has a 50mm speaker, a microphone size of Φ6.0×2.7mm. With its excellent playback quality, it delivers an immersive music experience. The Hoco W106 Tiger Gaming Headphone utilize a 3.5mm jack for connectivity and feature an omnidirectional microphone for clear voice communication. The Hoco W106 Headphone headphones offer convenient volume control. The Hoco W106 Tiger Gaming Headphone includes a 2-in-1 audio adapter, enabling the cable to be used with PCs or laptops equipped with dual audio ports.",
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 45, 2: 5, 3: 3, 4: 6, 5: 58},
      "price": 999,
      "cart": 1,
    },
    {
      "id": 20,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/fantech/t533/t533-01-228x228.jpg",
      "name": "Fantech T533 Wired Premium Office Mouse",
      "des":
      "The A4tech Bloody MC750 Gaming Headphone has a hybrid active noise canceling technology that can effectively isolate background noise by using a dual-chamber airflow reining speaker. This headphone gives you a competitive gaming advantage using the 50mm M.O.C.I. Hybrid Diaphragm Technology which combines carbomer and cultivated mycelium in a cutting-edge biotechnology product. The signature sound of A4tech Bloody MC750 headphone, which delivers a performance that gives you a competitive gaming advantage by projecting clear trebles, a deep, fulfilling bass, and a midrange. An original RGB flowing lights ring featuring the highlights of the gaming environment Superior comfort ear cushions support your concentration while gaming. Ergonomically built A4tech Bloody MC750 Gaming Headphone to match your head's specific contours for comfortable all-day usage, the softly padded, adjustable flying wing headband Simplify gameplay with the controller, which also guarantees clear, booming voice chats.",
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 3, 4: 67, 5: 5},
      "price": 5700,
      "cart": 1,
    },
    {
      "id": 21,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/micropack/m101/m101-1-228x228.jpg",
      "name": "Micropack M101 Optical USB Mouse",
      "des":
      "The Fantech MARS II HQ54 Wired Gaming Headset comes with a 3.5 mm Jack and a 3.5mm input jack. The headphone has a 40 mm driver diameter and a noise canceling feature that can handle unwanted sound to remove during game time or listening music or calling. With the -38 ± 2dB sensitivity you can get best gaming performance. The MARS II HQ54 has In-Line audio control ability and multi-perform compatibility. The head phone designed with Omni Directivity. Fantech MARS II HQ54 Headset is the best choise for the gamer.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 33, 4: 67, 5: 55},
      "price": 850,
      "cart": 1,
    },
    {
      "id": 22,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/micropack/m103/m103-1-228x228.jpg",
      "name": "Micropack M103 Optical USB Mouse",
      "des":
      "The AWEI ES-770i Over-Ear Gaming Headset is equipped with a 50mm driver unit for powerful audio delivery. Boasting a sensitivity level exceeding 110dB and an impedance of 20 ohms, it ensures dynamic and immersive sound. With a frequency response range spanning from 20Hz to 2000Hz, the headset captures a wide spectrum of audio details. Its operating temperature range is between -10°C and 50°C, ensuring reliable performance in various conditions. The AWEI ES-770i headset can be powered through a USB input of 5V, and it features both a 3.5mm and USB connector for versatile connectivity. The headset's stylish design is enhanced by the presence of cool atmosphere lights, adding to the overall gaming experience. The AWEI ES-770i headset comes with a cable length of 2.1 meters, providing flexibility in movement during gaming sessions.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 5, 2: 56, 3: 33, 4: 967, 5: 55},
      "price": 1299,
      "cart": 1,
    },
    {
      "id": 23,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/meetion/mt-m362/mt-m362-01-228x228.jpg",
      "name": "Meetion MT-M362 USB Optical Mouse",
      "des":
      "The W105 Joyful gaming headphones have a USB + 3.5mm connection port. This headset includes a 6.0x2.2mm microphone. This headset has a 2-meter cord and a multicolored LED breathing light effect. It comes with a 2-in-1 audio adapter cable that may be used with twin audio ports on desktop PCs or laptops. You can speak with your colleagues rapidly on the battlefield. You have an advantage over your opponents in competitive fighting. The Hoco W105 Joyful Gaming Headphone comes with no warranty.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 46, 3: 33, 4: 67, 5: 595},
      "price": 1399,
      "cart": 1,
    },
    {
      "id": 24,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/mouse/havit/ms70/ms70-01-228x228.webp",
      "name": "Havit MS70 Wired Optical Mouse",
      "des":
      "Jabra Evolve2 50 MS Stereo USB-A Headset is a premium headset with excellent sound quality and comfort for both work and play. With its active noise cancellation (ANC) technology, it has a binaural design that covers both ears and shuts out background sounds. It also has a noise cancellation (NC) microphone for clean and crisp audio calls. The Jabra Evolve2 50 MS Stereo USB-A Headset may be connected to your notebook, PC, smartphone, or tablet through Bluetooth or USB Type-A. It also has a Microsoft Teams certification, which allows you to launch the app with a one tap. Jabra Evolve2 50 MS Stereo USB-A Headset offers a slim and ergonomic design that fits comfortably over your ears. It weighs about 0.149 kg and is available in a trendy black color.",
      "spec": 'MPN: 25089-999-999\nModel: Evolve2 50 MS\nDriver Unit: 28mm\nBuilt-in microphone\nActive noise-cancellation (ANC)\nSound Mode: Stereo / Mono',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 335, 4: 697, 5: 595},
      "price": 16700,
      "cart": 1,
    },
  ];
  dynamic gamingpc = [
    {
      "id": 25,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/star-pc/intel/10th-gen-i5-10400f-02-228x228.webp",
      "name": "Intel Core i5-10400f 10th Gen Gaming Desktop PC",
      "des":
      'The Corsair HS80 RGB USB Wired Gaming Headphone has 50mm speakers with a frequency range of 20Hz to 40kHz, ensuring crystal-clear audio and deep bass. The headphone also includes a Dolby Audio function, which improves soundstage and spatial awareness in games. The microphone is omnidirectional, so it can pick up your voice from any angle, and it has a frequency response of 100Hz to 10kHz, making it excellent for clear conversation. The microphone has a sensitivity of -40dB, allowing it to filter out surrounding noise while focusing on your voice. The HS80 RGB USB Gaming Headphone offers a USB interface for connecting to your PC and a 1.8m cable length for mobility. The RGB lighting on the headphones may also be modified to match your style and mood. The HS80 RGB USB headphone weighs 0.916 kg, which is tiny for its size, and has a 32k Ohm impedance, allowing it to function with most audio sources without distortion. The headphone is comfy and long-lasting, with soft ear cushions and an adjustable headband. The Corsair HS80 RGB Wired Gaming Headphone is a great choice for gamers desiring a realistic and immersive audio experience.',
      "spec": 'Model: MC750\nActive Noise Cancelling\nHeadphone Frequency: 20Hz-20KHz\n50mm M.O.C.I. Hybrid Diaphragm Technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 33, 4: 67, 5: 55},
      "price": 53500,
      "cart": 1,
      "brand_logo": "https://w7.pngwing.com/pngs/1010/903/png-transparent-laptop-asus-display-resolution-zenbook-computer-brand-blue-angle-electronics-thumbnail.png",
    },
    {
      "id": 26,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/intel-13th-gen-core-i5-13400-gaming-desktop-pc-01-228x228.webp",
      "name": "Intel 13th Gen Core i5 13400 Gaming Desktop PC",
      "des":
      'The Edifier Hecate G30s Dual-Mode Wireless Gaming Headset comes with a Bluetooth 5.3 stable connection, and a 2.4GHz connection with about 15ms ultra-low latency to deliver a smooth experience. It can connect PCs, laptops, PS4, PS5 and other devices. The headphones give more gaming experience and utilization situations for gamers. Edifier Hecate G30s Gaming Headset provides clear treble, and impressive bass bringing a vivid gaming experience. Also, it can provide easy switching for ultimate enjoyment.',
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 95, 2: 6, 3: 33, 4: 4, 5: 45},
      "price": 89000,
      "cart": 1,
    },
    {
      "id": 27,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/intel-14th-gen-core-i5-14600k-desktop-pc-01-228x228.webp",
      "name": "Intel 14th Gen Core i5-14600K Desktop PC",
      "des":
      "The Hoco W106 Tiger Gaming Headphone showcases a compact and ergonomic design constructed from quality materials, ensuring comfort during extended usage. The Hoco W106 has a 50mm speaker, a microphone size of Φ6.0×2.7mm. With its excellent playback quality, it delivers an immersive music experience. The Hoco W106 Tiger Gaming Headphone utilize a 3.5mm jack for connectivity and feature an omnidirectional microphone for clear voice communication. The Hoco W106 Headphone headphones offer convenient volume control. The Hoco W106 Tiger Gaming Headphone includes a 2-in-1 audio adapter, enabling the cable to be used with PCs or laptops equipped with dual audio ports.",
      "spec": 'MPN: CA-9011237-AP / CA-9011238-AP\nModel: HS80 RGB USB\nmpedance: 32k Ohms, Drivers: 50mm\nFrequency: 20Hz - 40kHz\nMicrophone Type: Omni-directional\nDolby Audio, Surround Sound',
      "isFavourite": false,
      "rate": {1: 45, 2: 5, 3: 3, 4: 6, 5: 58},
      "price": 115999,
      "cart": 1,
    },
    {
      "id": 28,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/core-i5-13600k-gaming-desktop-pc-0001-228x228.webp",
      "name": "Intel 13th Gen Core i5-13600K Gaming Desktop PC",
      "des":
      "The A4tech Bloody MC750 Gaming Headphone has a hybrid active noise canceling technology that can effectively isolate background noise by using a dual-chamber airflow reining speaker. This headphone gives you a competitive gaming advantage using the 50mm M.O.C.I. Hybrid Diaphragm Technology which combines carbomer and cultivated mycelium in a cutting-edge biotechnology product. The signature sound of A4tech Bloody MC750 headphone, which delivers a performance that gives you a competitive gaming advantage by projecting clear trebles, a deep, fulfilling bass, and a midrange. An original RGB flowing lights ring featuring the highlights of the gaming environment Superior comfort ear cushions support your concentration while gaming. Ergonomically built A4tech Bloody MC750 Gaming Headphone to match your head's specific contours for comfortable all-day usage, the softly padded, adjustable flying wing headband Simplify gameplay with the controller, which also guarantees clear, booming voice chats.",
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 3, 4: 67, 5: 5},
      "price": 115700,
      "cart": 1,
    },
    {
      "id": 29,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/intel-14th-gen-core-i7-14700k-desktop-pc-01-228x228.webp",
      "name": "Intel 14th Gen Core i7 14700K Desktop PC",
      "des":
      "The Fantech MARS II HQ54 Wired Gaming Headset comes with a 3.5 mm Jack and a 3.5mm input jack. The headphone has a 40 mm driver diameter and a noise canceling feature that can handle unwanted sound to remove during game time or listening music or calling. With the -38 ± 2dB sensitivity you can get best gaming performance. The MARS II HQ54 has In-Line audio control ability and multi-perform compatibility. The head phone designed with Omni Directivity. Fantech MARS II HQ54 Headset is the best choise for the gamer.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 33, 4: 67, 5: 55},
      "price": 138850,
      "cart": 1,
    },
    {
      "id": 30,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/intel-13th-gen-core-i5-13600k-custom-gaming-desktop-pc-01-228x228.webp",
      "name": "Intel 13th Gen Core i5-13600K Custom Gaming Desktop PC",
      "des":
      "The AWEI ES-770i Over-Ear Gaming Headset is equipped with a 50mm driver unit for powerful audio delivery. Boasting a sensitivity level exceeding 110dB and an impedance of 20 ohms, it ensures dynamic and immersive sound. With a frequency response range spanning from 20Hz to 2000Hz, the headset captures a wide spectrum of audio details. Its operating temperature range is between -10°C and 50°C, ensuring reliable performance in various conditions. The AWEI ES-770i headset can be powered through a USB input of 5V, and it features both a 3.5mm and USB connector for versatile connectivity. The headset's stylish design is enhanced by the presence of cool atmosphere lights, adding to the overall gaming experience. The AWEI ES-770i headset comes with a cable length of 2.1 meters, providing flexibility in movement during gaming sessions.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 5, 2: 56, 3: 33, 4: 967, 5: 55},
      "price": 122299,
      "cart": 1,
    },
    {
      "id": 31,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/core-i7-12700k-gaming-desktop-pc-0001-228x228.webp",
      "name": "Intel 12th Gen Core i7-12700K Gaming Desktop PC",
      "des":
      "The W105 Joyful gaming headphones have a USB + 3.5mm connection port. This headset includes a 6.0x2.2mm microphone. This headset has a 2-meter cord and a multicolored LED breathing light effect. It comes with a 2-in-1 audio adapter cable that may be used with twin audio ports on desktop PCs or laptops. You can speak with your colleagues rapidly on the battlefield. You have an advantage over your opponents in competitive fighting. The Hoco W105 Joyful Gaming Headphone comes with no warranty.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 46, 3: 33, 4: 67, 5: 595},
      "price": 111399,
      "cart": 1,
    },
    {
      "id": 32,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/desktop-pc/desktop-offer/intel-12th-gen-core-i7-12700k-custom-gaming-desktop-pc-01-228x228.webp",
      "name": "Intel 12th Gen Core i7-12700K Custom Gaming Desktop PC",
      "des":
      "Jabra Evolve2 50 MS Stereo USB-A Headset is a premium headset with excellent sound quality and comfort for both work and play. With its active noise cancellation (ANC) technology, it has a binaural design that covers both ears and shuts out background sounds. It also has a noise cancellation (NC) microphone for clean and crisp audio calls. The Jabra Evolve2 50 MS Stereo USB-A Headset may be connected to your notebook, PC, smartphone, or tablet through Bluetooth or USB Type-A. It also has a Microsoft Teams certification, which allows you to launch the app with a one tap. Jabra Evolve2 50 MS Stereo USB-A Headset offers a slim and ergonomic design that fits comfortably over your ears. It weighs about 0.149 kg and is available in a trendy black color.",
      "spec": 'MPN: 25089-999-999\nModel: Evolve2 50 MS\nDriver Unit: 28mm\nBuilt-in microphone\nActive noise-cancellation (ANC)\nSound Mode: Stereo / Mono',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 335, 4: 697, 5: 595},
      "price": 216700,
      "cart": 1,
    },
  ];
  dynamic casing = [
    {
      "id": 33,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/deepcool/ch370-micro/deepcool-ch370-micro-atx-case-01-228x228.webp",
      "name": "DeepCool CH370 Micro ATX Case",
      "des":
      'The Corsair HS80 RGB USB Wired Gaming Headphone has 50mm speakers with a frequency range of 20Hz to 40kHz, ensuring crystal-clear audio and deep bass. The headphone also includes a Dolby Audio function, which improves soundstage and spatial awareness in games. The microphone is omnidirectional, so it can pick up your voice from any angle, and it has a frequency response of 100Hz to 10kHz, making it excellent for clear conversation. The microphone has a sensitivity of -40dB, allowing it to filter out surrounding noise while focusing on your voice. The HS80 RGB USB Gaming Headphone offers a USB interface for connecting to your PC and a 1.8m cable length for mobility. The RGB lighting on the headphones may also be modified to match your style and mood. The HS80 RGB USB headphone weighs 0.916 kg, which is tiny for its size, and has a 32k Ohm impedance, allowing it to function with most audio sources without distortion. The headphone is comfy and long-lasting, with soft ear cushions and an adjustable headband. The Corsair HS80 RGB Wired Gaming Headphone is a great choice for gamers desiring a realistic and immersive audio experience.',
      "spec": 'Model: MC750\nActive Noise Cancelling\nHeadphone Frequency: 20Hz-20KHz\n50mm M.O.C.I. Hybrid Diaphragm Technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 33, 4: 67, 5: 55},
      "price": 5200,
      "cart": 1,
    },
    {
      "id": 34,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/bag/vention/KBJB0-03-228x228.webp",
      "name": "VENTION KBJB0 Storage Case",
      "des":
      'The Edifier Hecate G30s Dual-Mode Wireless Gaming Headset comes with a Bluetooth 5.3 stable connection, and a 2.4GHz connection with about 15ms ultra-low latency to deliver a smooth experience. It can connect PCs, laptops, PS4, PS5 and other devices. The headphones give more gaming experience and utilization situations for gamers. Edifier Hecate G30s Gaming Headset provides clear treble, and impressive bass bringing a vivid gaming experience. Also, it can provide easy switching for ultimate enjoyment.',
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 95, 2: 6, 3: 33, 4: 4, 5: 45},
      "price": 580,
      "cart": 1,
    },
    {
      "id": 35,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/xtreme/v9-atx/v9-001-228x228.jpg",
      "name": "Xtreme V9 Full Window ATX Case",
      "des":
      "The Hoco W106 Tiger Gaming Headphone showcases a compact and ergonomic design constructed from quality materials, ensuring comfort during extended usage. The Hoco W106 has a 50mm speaker, a microphone size of Φ6.0×2.7mm. With its excellent playback quality, it delivers an immersive music experience. The Hoco W106 Tiger Gaming Headphone utilize a 3.5mm jack for connectivity and feature an omnidirectional microphone for clear voice communication. The Hoco W106 Headphone headphones offer convenient volume control. The Hoco W106 Tiger Gaming Headphone includes a 2-in-1 audio adapter, enabling the cable to be used with PCs or laptops equipped with dual audio ports.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 45, 2: 5, 3: 3, 4: 6, 5: 58},
      "price": 2999,
      "cart": 1,
    },
    {
      "id": 36,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/revenger/phantom/phantom-01-228x228.webp",
      "name": "Revenger PHANTOM Mid-Tower Gaming Case",
      "des":
      "The A4tech Bloody MC750 Gaming Headphone has a hybrid active noise canceling technology that can effectively isolate background noise by using a dual-chamber airflow reining speaker. This headphone gives you a competitive gaming advantage using the 50mm M.O.C.I. Hybrid Diaphragm Technology which combines carbomer and cultivated mycelium in a cutting-edge biotechnology product. The signature sound of A4tech Bloody MC750 headphone, which delivers a performance that gives you a competitive gaming advantage by projecting clear trebles, a deep, fulfilling bass, and a midrange. An original RGB flowing lights ring featuring the highlights of the gaming environment Superior comfort ear cushions support your concentration while gaming. Ergonomically built A4tech Bloody MC750 Gaming Headphone to match your head's specific contours for comfortable all-day usage, the softly padded, adjustable flying wing headband Simplify gameplay with the controller, which also guarantees clear, booming voice chats.",
      "spec": 'MPN: CA-9011237-AP / CA-9011238-AP\nModel: HS80 RGB USB\nmpedance: 32k Ohms, Drivers: 50mm\nFrequency: 20Hz - 40kHz\nMicrophone Type: Omni-directional\nDolby Audio, Surround Sound',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 3, 4: 67, 5: 5},
      "price": 5700,
      "cart": 1,
    },
    {
      "id": 37,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/deepcool/matrexx-40/matrexx-40-01-228x228.jpg",
      "name": "Deepcool MATREXX 40 Micro-ATX Case",
      "des":
      "The Fantech MARS II HQ54 Wired Gaming Headset comes with a 3.5 mm Jack and a 3.5mm input jack. The headphone has a 40 mm driver diameter and a noise canceling feature that can handle unwanted sound to remove during game time or listening music or calling. With the -38 ± 2dB sensitivity you can get best gaming performance. The MARS II HQ54 has In-Line audio control ability and multi-perform compatibility. The head phone designed with Omni Directivity. Fantech MARS II HQ54 Headset is the best choise for the gamer.",
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 33, 4: 67, 5: 55},
      "price": 5850,
      "cart": 1,
    },
    {
      "id": 38,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/deepcool/ch370-wh/deepcool-ch370-wh-micro-atx-case-01-228x228.webp",
      "name": "DeepCool CH370 WH Micro ATX Case",
      "des":
      "The AWEI ES-770i Over-Ear Gaming Headset is equipped with a 50mm driver unit for powerful audio delivery. Boasting a sensitivity level exceeding 110dB and an impedance of 20 ohms, it ensures dynamic and immersive sound. With a frequency response range spanning from 20Hz to 2000Hz, the headset captures a wide spectrum of audio details. Its operating temperature range is between -10°C and 50°C, ensuring reliable performance in various conditions. The AWEI ES-770i headset can be powered through a USB input of 5V, and it features both a 3.5mm and USB connector for versatile connectivity. The headset's stylish design is enhanced by the presence of cool atmosphere lights, adding to the overall gaming experience. The AWEI ES-770i headset comes with a cable length of 2.1 meters, providing flexibility in movement during gaming sessions.",
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 5, 2: 56, 3: 33, 4: 967, 5: 55},
      "price": 8299,
      "cart": 1,
    },
    {
      "id": 39,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/xtreme/v3-atx/v3-atx-01-228x228.jpg",
      "name": "Xtreme V3 Full Window Gaming Case",
      "des":
      "The W105 Joyful gaming headphones have a USB + 3.5mm connection port. This headset includes a 6.0x2.2mm microphone. This headset has a 2-meter cord and a multicolored LED breathing light effect. It comes with a 2-in-1 audio adapter cable that may be used with twin audio ports on desktop PCs or laptops. You can speak with your colleagues rapidly on the battlefield. You have an advantage over your opponents in competitive fighting. The Hoco W105 Joyful Gaming Headphone comes with no warranty.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 46, 3: 33, 4: 67, 5: 595},
      "price": 4399,
      "cart": 1,
    },
    {
      "id": 40,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/casing/deepcool/matrexx-30/deepcool-matrexx-30-mini-tower-case-01-228x228.jpg",
      "name": "Deepcool MATREXX 30 Mini Tower Case",
      "des":
      "Jabra Evolve2 50 MS Stereo USB-A Headset is a premium headset with excellent sound quality and comfort for both work and play. With its active noise cancellation (ANC) technology, it has a binaural design that covers both ears and shuts out background sounds. It also has a noise cancellation (NC) microphone for clean and crisp audio calls. The Jabra Evolve2 50 MS Stereo USB-A Headset may be connected to your notebook, PC, smartphone, or tablet through Bluetooth or USB Type-A. It also has a Microsoft Teams certification, which allows you to launch the app with a one tap. Jabra Evolve2 50 MS Stereo USB-A Headset offers a slim and ergonomic design that fits comfortably over your ears. It weighs about 0.149 kg and is available in a trendy black color.",
      "spec": 'MPN: 25089-999-999\nModel: Evolve2 50 MS\nDriver Unit: 28mm\nBuilt-in microphone\nActive noise-cancellation (ANC)\nSound Mode: Stereo / Mono',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 335, 4: 697, 5: 595},
      "price": 6700,
      "cart": 1,
    },
  ];
  dynamic gamingchair = [
    {
      "id": 41,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/horizon/evo-m-br/evo-m-br-01-228x228.webp",
      "name": "Horizon Evo-M-BR Ergonomic Gaming Chair",
      "des":
      'The Corsair HS80 RGB USB Wired Gaming Headphone has 50mm speakers with a frequency range of 20Hz to 40kHz, ensuring crystal-clear audio and deep bass. The headphone also includes a Dolby Audio function, which improves soundstage and spatial awareness in games. The microphone is omnidirectional, so it can pick up your voice from any angle, and it has a frequency response of 100Hz to 10kHz, making it excellent for clear conversation. The microphone has a sensitivity of -40dB, allowing it to filter out surrounding noise while focusing on your voice. The HS80 RGB USB Gaming Headphone offers a USB interface for connecting to your PC and a 1.8m cable length for mobility. The RGB lighting on the headphones may also be modified to match your style and mood. The HS80 RGB USB headphone weighs 0.916 kg, which is tiny for its size, and has a 32k Ohm impedance, allowing it to function with most audio sources without distortion. The headphone is comfy and long-lasting, with soft ear cushions and an adjustable headband. The Corsair HS80 RGB Wired Gaming Headphone is a great choice for gamers desiring a realistic and immersive audio experience.',
      "spec": 'Model: MARS II HQ54\n40 mm Speaker Driver Diameter\nNoise-Canceling Microphone\nIn-Line Audio Control\n3.5mm Jack, Multi-Platform Compatibility',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 33, 4: 67, 5: 55},
      "price": 11500,
      "cart": 1,
      "brand_logo": "https://seeklogo.com/images/D/Diesel-logo-34DD3EBF9E-seeklogo.com.png",
    },
    {
      "id": 42,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/horizon/evo-s-br2/evo-s-br2-01-228x228.webp",
      "name": "Horizon Evo-S-BR2 Ergonomic Gaming Chair",
      "des":
      'The Edifier Hecate G30s Dual-Mode Wireless Gaming Headset comes with a Bluetooth 5.3 stable connection, and a 2.4GHz connection with about 15ms ultra-low latency to deliver a smooth experience. It can connect PCs, laptops, PS4, PS5 and other devices. The headphones give more gaming experience and utilization situations for gamers. Edifier Hecate G30s Gaming Headset provides clear treble, and impressive bass bringing a vivid gaming experience. Also, it can provide easy switching for ultimate enjoyment.',
      "spec": 'MPN: CA-9011237-AP / CA-9011238-AP\nModel: HS80 RGB USB\nmpedance: 32k Ohms, Drivers: 50mm\nFrequency: 20Hz - 40kHz\nMicrophone Type: Omni-directional\nDolby Audio, Surround Sound',
      "isFavourite": false,
      "rate": {1: 95, 2: 6, 3: 33, 4: 4, 5: 45},
      "price": 13800,
      "cart": 1,
    },
    {
      "id": 43,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/horizon/evo-s-b/evo-s-b-02-228x228.webp",
      "name": "Horizon Evo-S-B Ergonomic Gaming Chair",
      "des":
      "The Hoco W106 Tiger Gaming Headphone showcases a compact and ergonomic design constructed from quality materials, ensuring comfort during extended usage. The Hoco W106 has a 50mm speaker, a microphone size of Φ6.0×2.7mm. With its excellent playback quality, it delivers an immersive music experience. The Hoco W106 Tiger Gaming Headphone utilize a 3.5mm jack for connectivity and feature an omnidirectional microphone for clear voice communication. The Hoco W106 Headphone headphones offer convenient volume control. The Hoco W106 Tiger Gaming Headphone includes a 2-in-1 audio adapter, enabling the cable to be used with PCs or laptops equipped with dual audio ports.",
      "spec": 'Model: MC750\nActive Noise Cancelling\nHeadphone Frequency: 20Hz-20KHz\n50mm M.O.C.I. Hybrid Diaphragm Technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 5, 3: 3, 4: 6, 5: 58},
      "price": 12299,
      "cart": 1,
    },
    {
      "id": 44,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/horizon/apex-bb/apex-bb-01-228x228.webp",
      "name": "Horizon Apex-BB Ergonomic Gaming Chair",
      "des":
      "The A4tech Bloody MC750 Gaming Headphone has a hybrid active noise canceling technology that can effectively isolate background noise by using a dual-chamber airflow reining speaker. This headphone gives you a competitive gaming advantage using the 50mm M.O.C.I. Hybrid Diaphragm Technology which combines carbomer and cultivated mycelium in a cutting-edge biotechnology product. The signature sound of A4tech Bloody MC750 headphone, which delivers a performance that gives you a competitive gaming advantage by projecting clear trebles, a deep, fulfilling bass, and a midrange. An original RGB flowing lights ring featuring the highlights of the gaming environment Superior comfort ear cushions support your concentration while gaming. Ergonomically built A4tech Bloody MC750 Gaming Headphone to match your head's specific contours for comfortable all-day usage, the softly padded, adjustable flying wing headband Simplify gameplay with the controller, which also guarantees clear, booming voice chats.",
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 45, 2: 56, 3: 3, 4: 67, 5: 5},
      "price": 15700,
      "cart": 1,
    },
    {
      "id": 45,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/horizon/apex-bgra/apex-bgra-01-228x228.webp",
      "name": "Horizon Apex-BGRA Ergonomic Gaming Chair",
      "des":
      "The Fantech MARS II HQ54 Wired Gaming Headset comes with a 3.5 mm Jack and a 3.5mm input jack. The headphone has a 40 mm driver diameter and a noise canceling feature that can handle unwanted sound to remove during game time or listening music or calling. With the -38 ± 2dB sensitivity you can get best gaming performance. The MARS II HQ54 has In-Line audio control ability and multi-perform compatibility. The head phone designed with Omni Directivity. Fantech MARS II HQ54 Headset is the best choise for the gamer.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 33, 4: 67, 5: 55},
      "price": 16850,
      "cart": 1,
    },
    {
      "id": 46,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/horizon/apex-br2/br2-01-228x228.webp",
      "name": "Horizon Apex-BR2 Ergonomic Gaming Chair",
      "des":
      "The AWEI ES-770i Over-Ear Gaming Headset is equipped with a 50mm driver unit for powerful audio delivery. Boasting a sensitivity level exceeding 110dB and an impedance of 20 ohms, it ensures dynamic and immersive sound. With a frequency response range spanning from 20Hz to 2000Hz, the headset captures a wide spectrum of audio details. Its operating temperature range is between -10°C and 50°C, ensuring reliable performance in various conditions. The AWEI ES-770i headset can be powered through a USB input of 5V, and it features both a 3.5mm and USB connector for versatile connectivity. The headset's stylish design is enhanced by the presence of cool atmosphere lights, adding to the overall gaming experience. The AWEI ES-770i headset comes with a cable length of 2.1 meters, providing flexibility in movement during gaming sessions.",
      "spec": 'Model: W105 Joyful\nInterface: USB + 3.5mm plug\nmicrophone Φ6.0x2.2mm\nSpeaker: 40mm\nColorful LED breathing light effect',
      "isFavourite": false,
      "rate": {1: 5, 2: 56, 3: 33, 4: 967, 5: 55},
      "price": 12099,
      "cart": 1,
    },
    {
      "id": 47,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/gamemax/gcr07/gcr07-red-1-228x228.jpg",
      "name": "Gamemax GCR07 Gaming Chair Red",
      "des":
      "The W105 Joyful gaming headphones have a USB + 3.5mm connection port. This headset includes a 6.0x2.2mm microphone. This headset has a 2-meter cord and a multicolored LED breathing light effect. It comes with a 2-in-1 audio adapter cable that may be used with twin audio ports on desktop PCs or laptops. You can speak with your colleagues rapidly on the battlefield. You have an advantage over your opponents in competitive fighting. The Hoco W105 Joyful Gaming Headphone comes with no warranty.",
      "spec": 'Model: Hecate G30s\nDriver: 40mm dynamic\nPlaytime: 30 hours (light off)\n15ms ultra low latency\nDual-Mode Wireless technology',
      "isFavourite": false,
      "rate": {1: 845, 2: 46, 3: 33, 4: 67, 5: 595},
      "price": 10399,
      "cart": 1,
    },
    {
      "id": 48,
      "img":
      "https://www.startech.com.bd/image/cache/catalog/gaming-chair/gamemax/gcr07/gcr07-blue-1-228x228.jpg",
      "name": "Gamemax GCR07 Gaming Chair Blue",
      "des":
      "Jabra Evolve2 50 MS Stereo USB-A Headset is a premium headset with excellent sound quality and comfort for both work and play. With its active noise cancellation (ANC) technology, it has a binaural design that covers both ears and shuts out background sounds. It also has a noise cancellation (NC) microphone for clean and crisp audio calls. The Jabra Evolve2 50 MS Stereo USB-A Headset may be connected to your notebook, PC, smartphone, or tablet through Bluetooth or USB Type-A. It also has a Microsoft Teams certification, which allows you to launch the app with a one tap. Jabra Evolve2 50 MS Stereo USB-A Headset offers a slim and ergonomic design that fits comfortably over your ears. It weighs about 0.149 kg and is available in a trendy black color.",
      "spec": 'MPN: 25089-999-999\nModel: Evolve2 50 MS\nDriver Unit: 28mm\nBuilt-in microphone\nActive noise-cancellation (ANC)\nSound Mode: Stereo / Mono',
      "isFavourite": false,
      "rate": {1: 845, 2: 456, 3: 335, 4: 697, 5: 595},
      "price": 16700,
      "cart": 1,
    },
  ];
}
