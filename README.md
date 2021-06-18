# PC-SC-Connector-Component-for-C-BUILDER
PC/SC Connector Component for C++ BUILDER,Helps you access a smartcard reader through Microsofts SmartCard API.

based on Norbert Huettisch's PCSCConnector.pas   (nobbi(at)nobbi.com)

rewrited it with C++ BUILDER 2010

The component has the following properties, methods and events:

# Methods:

- bool fastcall Init(void);

- bool fastcall Open(void);
- void fastcall Close(void);
- bool fastcall Connect(void);			
- void fastcall Disconnect(void);			
- long fastcall GetResponseFromCard(const byte* apdu, const DWORD apduLength, byte* *Response, DWORD& RLen);*

#  Properties:

- int UseReaderNum; //points to the Reader to use in ReaderList or is set to -1 if no reader is selected
- TStringList* ReaderList; //holds the list of available readers. It is filled by calling Init.
- int NumReaders; //Holds the number of available readers
- bool Connected; //TRUE if connected to the reader (the reader MAY BE empty)
- bool Opened; //TRUE if a reader is being watched
- unsigned ReaderState; //holds the last status of the reader
- DWORD AttrProtocol; //the protocol used to communicate with the current card
- String AttrICCType; //the ICC type of the current card
- String AttrCardATR; // the ATR of the current card
- String AttrVendorName; //the vendor name of the reader
- String AttrVendorSerial; //the serial number of the reader

#  Events:
- OnCardInserted: fires when a card is inserted in the reader			
- OnCardActive: fires when a inserted card is recognised and may be accessed.			
- OnCardRemoved: fires when a inserted card is removed from the reader			
- OnCardInvalid: fires when a inserted card is not readable			
- OnReaderWaiting: fires when the reader is ready and waiting for a card			
- OnReaderListChange: fires when the reader list has been updated			
- OnError: fires when a error message is received while connecting to the card,reading the status word or transmitting data to the card.

#  Hints:

- First, call **INIT**			
- Then, set the reader you want to use			
- Then, call **OPEN**			
- Then, if a card is inserted, you may call **GetResponse...**

#  Version info:

- 2010.01.10 initial version      	  
- 2021.06.18 update to C++ BUILDER 10.1

