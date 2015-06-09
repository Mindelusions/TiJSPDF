# TiJSPDF

TiJSPDF is a [JSPDF](http://snapshotmedia.co.uk/blog/jspdf) plugin for Titanium Mobile applications that 
allows you to generate your PDFs using the JSPDF library and manipulate them within your Titanium Mobile 
application.

This plugin is maintained separately from Titanium and is not currently supported by Appcelerator through 
any premium or community support offereings.

**_Please double check all of your code before deploying an app with this plugin. It took all of 10 minutes 
to port and I cannot speak to the practices of the original author. If you see something wrong and you think 
that you know a better way, then fork it and git 'er done._**

## Documentation

Visit the [JSPDF blog post](http://snapshotmedia.co.uk/blog/jspdf) for PDF creation guidance.

## In The Box

This project contains an example application using a demo from the JSPDF demo page. If you'd rather just 
get going on making your own app, you can download just the modified js files from the 'Downloads' section.
Just drop the uncompressed files into your **'/app/assets/'** folder and start building.
****EDIT: This used to say "Just drop the uncompressed files into your 'Resources' folder..." This has now become incorrect with Appcelerator's use of Alloy. You now will need to drop the uncompressed files into the path specified above.****

## Usage

Ripped straight from the included example app.

~~~
// Include the JSPDF libraries
// ****EDIT: Now with the use of Alloy, you will need to include the rest of the path following /app/assets/.****
// **** For example, your file might be located in /app/assets/TiJSPDF-master/Resources/jspdf.js ****
// **** You will also need to edit the includes in jspdf.js to do the same ****
Ti.include('jspdf.js');

var doc = new jsPDF();
doc.text(20, 20, 'Hello world!');
doc.text(20, 30, 'This is client-side Javascript, pumping out a PDF.');
doc.addPage();
doc.text(20, 20, 'Do you like that?');

var file = Ti.Filesystem.getFile(Ti.Filesystem.tempDirectory, 'test.pdf');
file.write(doc.output());
var pdfview = Ti.UI.createWebView({width:'100%',height:'100%',data:file});
var win = Ti.UI.createWindow();
win.add(pdfview);
win.open({modal:true});
~~~

And thats about it.
