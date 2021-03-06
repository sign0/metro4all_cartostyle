//@standard_line:     #333; //footway
//@standard_fill:     #fff;
//@standard_case:     #333 * 0.9;

@road_line: 	@primary_line;
@road_fill: 	@primary_fill;
@road_case: 	@primary_case;

@motorway_line: 	@primary_line;
@motorway_fill: 	@primary_fill;
@motorway_case: 	@primary_case;

@trunk_line: 		@primary_line;
@trunk_fill: 		@primary_fill;
@trunk_case: 		@primary_case;

@secondary_line: 		@primary_line;
@secondary_fill: 		@primary_fill;
@secondary_case: 		@primary_case;

@footway_line:     #ce9457;
@footway_fill:     #ce9457;
@footway_case:     #ce9457;

// residential street







#roads_high::outline[zoom>=11][zoom<=20]{
line-color:  @road_case;
  }
#roads_high::outline[zoom>=11][zoom<=20][stylegroup='noauto']{
line-width:  0;
  }

#roads_high[zoom>=11][zoom<=20]{
line-color:  @road_fill;
  }

#footways[zoom>=16] {
    line-color: @footway_fill;
    line-width: 1.3;
    line-dasharray: 0;
}


#footway_area[zoom>16]['layer'>-1]{
  polygon-opacity:0.70;
  polygon-fill:@footway_fill;
}



#platforms
{
  // Metro platforms
  ['near_metro_line'=true]['near_metro_station_point'=true][zoom>=14]{
    polygon-fill: #cf6767; 
  }
  // Not metro platforms
    ['near_metro_line'=false][zoom>=14]{
    polygon-fill: #a4a4a4; 
  }
      ['near_metro_station_point'=false][zoom>=14]{
    polygon-fill: #a4a4a4; 
  }

  }

/*
#platforms
{
      ['near_metro_station_point'=true][zoom>=14]{
    polygon-fill: #00ff00;
    polygon-opacity : 0.5;
  }  
  
  }

*/

#tunnel_footways[zoom>15] {
  line-width:4;
  line-color:#740000;
  line-dasharray:2,2;
}

#tunnel_footways_area[zoom>16] {
  polygon-fill: #740000;
}

#subway_entrances[zoom>7] {
  /*
  в осме у точек станций должен быть тег network, если его нет, то operator. 
  
  */
    marker-allow-overlap:false;
  
  // METRO LOGOS RU
  
    [network='МОСКОВСКИЙ МЕТРОПОЛИТЕН']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/msk_logo.svg');
    }
      [network='ПЕТЕРБУРГСКИЙ МЕТРОПОЛИТЕН']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/spb_logo.svg');
    }
  
  [network='НИЖЕГОРОДСКИЙ МЕТРОПОЛИТЕН']
    {
  marker-width:18;
  marker-file:url('img_m4all/wikimedia-subway/niz_logo.svg');
    }
   [network='КАЗАНСКИЙ МЕТРОПОЛИТЕН']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/kzn_logo.svg');
    } 
   [network='САМАРСКИЙ МЕТРОПОЛИТЕН']
    {
  marker-width:130;
  marker-file:url('img_m4all/wikimedia-subway/sam_logo.svg');
    } 
     [network='ЕМУП «ЕКАТЕРИНБУРГСКИЙ МЕТРОПОЛИТЕН»']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/ekb_logo.svg');
    } 
      [network="НОВОСИБИРСКИЙ МЕТРОПОЛИТЕН"]
    {
  marker-width:26;
  marker-file:url('img_m4all/wikimedia-subway/nsk_logo.svg');
    }
  
 
  
  //METRO LOGOS UA
      [network='КП "КИЇВСЬКИЙ МЕТРОПОЛІТЕН"']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Kyiv_Metro_logo.svg');
    }  
  
    [network='КП «ХАРКІВСЬКИЙ МЕТРОПОЛІТЕН»']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Kharkov_metro_logo.png');
    }  
  /*
     [network='"КП "ДНЕПРОПЕТРОВСКИЙ МЕТРОПОЛИТЕН""']
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Kharkov_metro_logo.png');
    }
  */
  
        [network="МИНСКИЙ МЕТРОПОЛИТЕН"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/min_logo.svg');
    }
  
  // METRO LOGOS EUROPE
  
        [network="ATAC"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Logo_Metropolitane_Italia.svg');
    }  
  
        [network="WARSAW METRO"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/waw_logo.svg');
    }
  
        [network="AMSTERDAM METRO"]
    {
  marker-width:40;
  marker-file:url('img_m4all/wikimedia-subway/ams_logo.svg');
    } 
        [network="GLASGOW SUBWAY"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/gla_logo.svg');
    }   
          [network="TL"] //LAUZANNE
    {
  marker-width:18;
  marker-file:url('img_m4all/wikimedia-subway/lau_logo.svg');
    }   
    //METRO LOGOS ASIA
  /*
  	 [network="BAKI METROPOLITENI"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Kharkov_metro_logo.png');
    }
  */
      [network="TBILISI METRO"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Metro_Tbilisi_logo.svg');
    }
  /*
        [network="АЛМАТИНСКИЙ МЕТРОПОЛИТЕН"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Metro_Tbilisi_logo.svg');
    }
   */
        [network="ТАШКЕНТСКИЙ МЕТРОПОЛИТЕН"]
    {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia-subway/Uzbmetrologo.gif');
    }
 
  
  // Маркер метро по умолчанию
  marker-width:13;
  marker-file:url('img/walking.n.12.png');
  //marker-allow-overlap:true; 
}




	// BUS STOPS

#bus_stops[zoom>15][zoom <= 16], #tram_stops[zoom>15][zoom <= 16] { //bus stops icons
  marker-width:6;
  marker-fill:#0000ff;
  marker-allow-overlap:true;
  marker-line-color:white;
}

#bus_stops[zoom>16] { //bus stops icons
  marker-width:15;
  marker-file:url('img_m4all/wikimedia/5.16_Russian_road_sign.svg');
  marker-allow-overlap:true;
}

#bus_stops[zoom>16],#tram_stops[zoom>16]  { //bus stops captions
 text-face-name:@sans;
 text-fill: #5555ff * 0.6;
 text-halo-radius: 1.5;
 text-size: 9;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 text-placement-type: simple;
}

#tram_stops[zoom>16] {
  marker-width:15;
  marker-file:url('img_m4all/wikimedia/5.17_Russian_road_sign.svg');
  marker-allow-overlap:true;
}


#highway_area[zoom>=15] {
  //line-color:@primary_case;
  //line-width:0.5;
  polygon-opacity:1;
  polygon-fill:@primary_fill;
}



//SHOPS

#shops[zoom>15] {
  marker-width:25;
  marker-file:url('img_m4all/nicolasmollet/supermarket.png');
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}

#shops[zoom>17] { //Подписи магазинов
 text-face-name:@sans;
 text-fill: #555555 * 0.6;
 text-halo-radius: 1.5;
 text-size: 9;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 text-placement-type: simple;
}



// Size variables. nicolasmollet icons
@iconsize_nm_15:20;
@iconsize_nm_16:25;
// Size variables. aiga icons
@iconsize_aiga_15:20;
@iconsize_aiga_16:28;



	//AMENITIES

#amenity[zoom>15] {
  
  //BANKS
  
[amenity='bank'] {
    marker-file:url('img_m4all/nicolasmollet/bank_euro.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
 [amenity='atm'] {
  	marker-file:url('img_m4all/nicolasmollet/atm_euro.png');
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}   
    }
  
  // FOOD
  
  [amenity='fast_food'] {
 	marker-file:url('img_m4all/nicolasmollet/fastfood.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
  [amenity='restaurant'] {
    marker-file:url('img_m4all/nicolasmollet/restaurant.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
 [amenity='cafe'] {
 	marker-file:url('img_m4all/nicolasmollet/restaurant.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
 [amenity='bar'] {
 	marker-file:url('img_m4all/nicolasmollet/bar.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
 [amenity='pub'] {
 	marker-file:url('img_m4all/nicolasmollet/bar.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
 [amenity='biergarten'] {
 	marker-file:url('img_m4all/nicolasmollet/bar.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  
  
  //HOSPIALS
  
 [amenity='hospital'],[amenity='hospital'] {
 	marker-file:url('img_m4all/nicolasmollet/hospital-building.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }
  

  
  //ENTERTAIMENT
  
 [amenity='cinema'] {
 	marker-file:url('img_m4all/thenounproject/pd/icon_79287.svg'); 
    [zoom>15] { marker-width:15;}
    [zoom>16] { marker-width:20;} 
    }  
  
 [amenity='theatre'],[amenity='club'] {
 	marker-file:url('img_m4all/nicolasmollet/theater.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }    
  
  /* КЛУБАСИКИ НЕ НУЖНЫ (никто не знает что это такое, и как это обозначить на иконке)
              [amenity='nightclub'] {
    marker-width:32;
 	 marker-file:url('img_m4all/nicolasmollet/test.png'); 
    }
  */  
 
  [amenity='arts_centre'] {
 	marker-file:url('img_m4all/nicolasmollet/theater.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    } 
  
  [amenity='community_centre'] {
 	marker-file:url('img_m4all/nicolasmollet/museum_paintings.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }   
    
  [amenity='social_centre'] {
 	marker-file:url('img_m4all/nicolasmollet/museum_paintings.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }   
  
  
// Shop-like  
  
  [amenity='pharmacy'] {
 	marker-file:url('img_m4all/nicolasmollet/drugstore.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }  

  [amenity='toilets'] {
 	marker-file:url('img_m4all/aiga/Toilets_unisex.svg'); 
    [zoom>15] { marker-width:15;}
    [zoom>16] { marker-width:15;} 
    }

  [amenity='embassy'] {
 	marker-file:url('img_m4all/nicolasmollet/embassy.png'); 
    [zoom>15] { marker-width:@iconsize_nm_15;}
    [zoom>16] { marker-width:@iconsize_nm_16;}  
    }


  
  }

#amenity::priority14_icons[zoom>=14] {
  
    [amenity='bus_station'] {
 	marker-file:url('img_m4all/aiga/Aiga_bus_inv.svg'); 
    [zoom>14] { marker-width:@iconsize_aiga_15;}
    [zoom>16] { marker-width:@iconsize_aiga_16;} 
    }

  
  
  [amenity='museum'] {
 	marker-file:url('img_m4all/nicolasmollet/museum.png'); 
    [zoom>14] { marker-width:@iconsize_aiga_15;}
    [zoom>16] { marker-width:@iconsize_aiga_16;} 
    }
  
  [amenity='arts_centre'] {
 	marker-file:url('img_m4all/nicolasmollet/museum.png'); 
    [zoom>14] { marker-width:@iconsize_aiga_15;}
    [zoom>16] { marker-width:@iconsize_aiga_16;} 
    } 
  
  [amenity='zoo'] {
 	marker-file:url('img_m4all/nicolasmollet/zoo.png'); 
    [zoom>14] { marker-width:@iconsize_aiga_15;}
    [zoom>16] { marker-width:@iconsize_aiga_16;} 
    } 
  
  }


#amenity::priority14_labels[zoom>=14]  {
     [amenity='bus_station'] 
    ,[amenity='zoo'] 
    ,[amenity='museum'] 
    ,[amenity='university'] 
    {
  
 //Подписи amenity
    
 text-face-name:@sans_bold_italic;
 text-fill: #aaaaaa * 0.6;
 text-halo-radius: 1.5;
 text-size: 10;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 //text-placement-type: dummy;
  
    [zoom>17]
      {
       //shield-allow-overlap:true;
      }
}  
}


#amenity::priority16[zoom>16]  {
	 [amenity='bank']
    ,[amenity='atm']
    ,[amenity='fast_food']
    ,[amenity='restaurant']
    ,[amenity='cafe']
    ,[amenity='bar']
    ,[amenity='pub']
	,[amenity='biergarten']
    ,[amenity='hospital']
    ,[amenity='clinic']
    ,[amenity='cinema']
    ,[amenity='theatre']
    ,[amenity='arts_centre']
    ,[amenity='community_centre']
    ,[amenity='social_centre']
    ,[amenity='pharmacy']
    ,[amenity='embassy']
    ,[amenity='hospital'] 
    ,[amenity='arts_centre'] 
    {
  
 //Подписи amenity
 text-face-name:@sans;
 text-fill: #aaaaaa * 0.6;
 text-halo-radius: 1.5;
 text-size: 9;
 text-name: "[name]";
 text-halo-fill: #fff;
 text-allow-overlap:false;
 text-dx: 10;
 text-placement-type: simple;
  
    [zoom>17]
      {
       text-allow-overlap:true;
      }
}  
}


/* City label for low zooms - empty map with city names*/
#place::city[type='city'][zoom<8][population>200000] {
  

  
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  
  marker-width:5;
  marker-fill:#fff;
  marker-line-color:#333;
  marker-allow-overlap: false;
  marker-placement: point;
  marker-opacity: 1;
  text-horizontal-alignment : right;
  text-vertical-alignment : top;
  text-dx: 3;
  text-dy: 3;
  text-allow-overlap:false;
  text-size: 10;
  text-halo-radius:1;
  
  [zoom>5] {
    text-size: 14;
    }

}


#subway_stations::subway[zoom>=16] {
 text-face-name:@sans;
 text-fill: #ff5555 * 0.6;
 text-halo-radius: 1.5;
 text-name: "[name]";
 text-halo-fill: #fff;
  
 [zoom<14] { text-allow-overlap:false;}
 [zoom>=14] { text-allow-overlap:true;}
  
 [zoom>=10]{ text-size: 7; }
 [zoom>=15]{ text-size: 15; }
}

#subway_stations_shift[zoom>=10][zoom<16] {
 text-face-name:@sans;
 text-fill: #ff5555 * 0.6;
 text-halo-radius: 1.5;
 text-name: "[name]";
 text-halo-fill: #fff;
  
 [zoom<14] { text-allow-overlap:false;}
 [zoom>=14] { text-allow-overlap:true;}
  
 [zoom>=10]{ text-size: 7; }
 [zoom>=15]{ text-size: 15; }
  
    text-placement-type: simple;
  text-dx: 5;
  text-dy: 5;
  text-placements: 'N';
  [angle_offset_from_platform >= 45][angle_offset_from_platform < 135] { text-placements: 'E'; }
  [angle_offset_from_platform >= 135][angle_offset_from_platform < 225] { text-placements: 'S'; }
  [angle_offset_from_platform >= 225][angle_offset_from_platform < 315] { text-placements: 'W'; }
}
