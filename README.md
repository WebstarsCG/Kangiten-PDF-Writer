# Kangiten 
Kangiten will produce PDF documents based on PDF::Reuse module. It suitable for creation of business cycle documents like Estimate, Purchase Order, Invoice & etc.

## How to
- Make sure the module availability of PDF::Reuse in the system.
- Check sample_pdf.pl for example usage ( Run it by Web server or command prompt )
- A new pdf file will be created based on given default data with BAS.pdf as background
- Construct the perl HoH structure suits to your need
- Change the background PDF file to your need

## File
- KG.pm is the primary module
- KG has wrapper functions for PDF::Reuse module core utilities
- text_wrap is an internal module for KG

## To Do
- Naming improvements in input hash structure
- Step by Step Samples
- Ready to use structures for generic needs

## Copyright and license

Copyright: info@webstarscg.com, 2016 and later.

All source files in this package, including the documentation, are open source software under the terms of [Perl's Artistic License 2.0](http://www.perlfoundation.org/artistic_license_2_0).

