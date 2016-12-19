#!/usr/bin/perl -w 
            
                        
            # Custom Modules
            
                        use KG;

            # variable
            
                        my $PV;
                        
            # settings
            
                        $PV->{'current_time'} = time;
                        
                        $PV->{'file_name'}    = "sample_pdf_$PV->{current_time}.pdf";
                        
            # page settings
                                    
                        my $page = {
                                
                                # paper format
                                
                                paper       =>{   paper_size   => 'A4',
                                                  orientation  => 'portrait'},
                                
                                # file out name
                                
                                file_name   => $PV->{'file_name'},    
                            
                                
                                
                                form        => { file   => 'BAS.pdf', # source file
                                                 page   => 1,
                                                 adjust => 1,
                                                 x      => 25,
                                                 y      =>545},
                            
                                font        => 'Times-Bold', 
                            
                                font_size   => 10,                         
                                line_height => 20,
                        
                                margin      => { top    =>100,
                                                 bottom =>75,
                                                 left   =>36,
                                                 right  =>25   },
                                
                                is_header_all  =>1
                            
                        }; # format
                         
                         
            # header data
                        
                         my $header = {
                                       
                                                0=>{  left_xaxis  =>250,   # print start x position                         
                                                      line_height =>25,    # line height of the row
                                                            
                                                            # column definition
                                                                                        
                                                            header      =>{
                                                                            0=>{font        =>'Helvetica-Bold',
                                                                                font_size   =>12,                                                                               
                                                                            } # column
                                                            },
                                                            
                                                            data=>[['Production Estimate']],
                                                            
                                                },
                                                
                                                1=>{
                                                            line_height =>  12,   
                                                            
                                                            # format definition for 3 columns
                                                            
                                                            header=>{
                                                             
                                                                            0=>{font       => 'Helvetica',
                                                                                font_size  => 9,
                                                                                d_width    => 50
                                                                            },
                                                                            
                                                                            1=>{font       => 'Helvetica',
                                                                                font_size  => 9,
                                                                                d_width    => 10
                                                                            },
                                                                            
                                                                            2=>{font       => 'Helvetica-Bold',
                                                                                font_size  => 9,                                            
                                                                                d_width    => 90,                                                
                                                                                align      => 'left'
                                                                            }
                                                                                
                                                            }, # end of header
                                                            
                                                            # data for 3 columns
                                                                
                                                            data=> [                        
                                                                     ['Client:','','<Client Address>' ],
                                                                     ['Address:','','<Address 1>' ],
                                                                     ['','','<Address 2>' ],
                                                                     ['','','<Address 3>' ],
                                                                     ['Estimate No.','','<estimate no.>' ],
                                                                     ['Date:','','<estimate date>' ]
                                                                     
                                                                    ],
                                                                    
                                                    } # end of def
                                                    
                                    }; # end of data


            # body data
                        
                        my $data={
               
                                    # structure for table print
                                   
                                    0=>{
                                        
                                                line_data                   => 1,                    
                                                line_height                 => 15,
                                                
                                                # title format
                                                title_text_font             => 'Helvetica-Bold',                    
                                                title_text_font_size        => 9,
                                                
                                                # data format
                                                data_text_font              => 'Tahoma',                    
                                                data_text_font_size         =>  9,                    
                                                data_left_margin            =>  20,
                                                
                                                # format definition for 3 columns 
                                                
                                                header=>{
                                                    
                                                        0=>{title   => 'S.No', #column header text
                                                            h_width => 40,
                                                            offset  => 8,
                                                            d_width => 20,
                                                            align   => 'right'
                                                        },                                                  
                            
                                                        1=>{title   => 'Details of Production / Creative Charges',
                                                            offset  => 70,
                                                            h_width => 310,
                                                            d_width => 330,
                                                            align   => 'left'
                                                        },
                                                                  
                                                        2=>{title   => 'Rate',
                                                            offset  => 10,
                                                            h_width => 45,
                                                            d_width => 60,
                                                            align   => 'right'
                                                        },
                                                                  
                                                        3=>{title   => 'Quantity',
                                                            offset  => 38,
                                                            h_width => 100,
                                                            d_width => 105,
                                                            align   => 'right'
                                                        },
                                                    
                                                        4=>{title   => 'Amount',
                                                            offset  => 10,
                                                            h_width => 65,
                                                            d_width => 70,
                                                            align   => 'right'
                                                        }
                                                        
                                                },
                                                                 
                                                # data
                                                
                                                data=> [
                                                        
                                                         [1,'Printing of visiting cards','0.50','1000.00','500.00'],
                                                         [2,'Printing of promotion material','4','1000.00','4000.00'],                                                         
                                                         [3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac dui nec enim mattis vulputate. Nam nunc metus, fermentum nec risus a, accumsan volutpat lacus. Aliquam id consequat odio. Integer sit amet felis vehicula, placerat enim at, elementum nisi. Ut tincidunt justo tincidunt bibendum tincidunt. In dignissim turpis in metus efficitur mollis.','6','3000.00','18000.00'],
                                                         
                                                        ],
                                        
                                    }, # end of detail
                                    
                                    # data for total
                                    
                                    1=>{
                                        
                                                left_xaxis  => 450,                    
                                                line_height => 2,
                                                
                                                data_text_font      => 'Helvetica-Bold',                    
                                                data_text_font_size => 9,
                                                                   
                                                header=>{
                                                            0=>{h_width =>100,
                                                                d_width =>120,
                                                                align   =>'right'
                                                            },
                                                         
                                                            1=>{h_width =>100,
                                                                d_width =>50,
                                                                align   =>'right'
                                                            }
                                                     
                                                        },                    
                                                        
                                                data=>[ ['Grand Total(Rs)','4500.00']],                           
                                                   
                                    }, # end
                                    
                                    
                                    2=>{
                    
                                                data_text_font          =>'Times',                                                
                                                data_text_font_size     =>9,
                                                
                                                line_height             =>25,
                                                
                                                
                                                header=>{
                                                            0=>{h_width =>550,
                                                                d_width =>550,
                                                                offset  =>137
                                                            },
                                                         
                                                            1=>{h_width =>100,
                                                                d_width =>100,
                                                                offset  =>150
                                                            },
                                                         
                                                },
                                                
                                                data=>[['Note: Sample Note Message']],
                                                
                                    } # end of 2
              
                        }; # end of data
            
            # PDF creation
                                                  
                        &KG::create($page,$header,$data);
            
            # Content
            
                        print "Content-type:text/html\n\n";
                        
                        print " File Created <a href='".$PV->{'file_name'}."' target='_blank'>Check PDF</a>";
            
            
            
            
           
           
           
           
           
