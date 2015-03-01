Map {} /* transparent background */

/* Bus lines */
#feb222015_tm_routes ['type' = "BUS"] {
    ::case {
    line-width: 8;
    line-color: #000;
    line-join: round;
    line-cap: round;
  }
  ::fill {
    line-width: 6;
    line-color: #ffffff;
    line-join: round;
    line-cap: round;
  }
  [zoom > 16]{::case {line-width: 14;} ::fill {line-width: 12;}}
  [zoom = 16]{::case {line-width: 10;} ::fill {line-width: 10;}}
  [zoom = 15]{::case {line-width: 6;} ::fill {line-width: 4;}}
  [zoom = 14]{::case {line-width: 5;} ::fill {line-width: 3;}}
  [zoom < 14]{::case {line-width: 4;} ::fill {line-width: 2;}}
}

/* MAX lines */
#feb222015_tm_routes ['type' = "MAX"] {
  line-width: 3;
  line-color: #fff;
  line-join: round;
  line-cap: round;
  ['rte_desc' = "MAX Blue Line"] {
    line-color: #248;
    line-offset: 4;
      [zoom < 15]{line-width: 2; line-offset: 3;}
      [zoom > 16]{line-width: 5; line-offset: 6;}
  }
  ['rte_desc' = "MAX Red Line"] {
    line-color: #d34;
    line-offset: 1;
      [zoom < 15]{line-width: 2; line-offset: 1;}
      [zoom > 16]{line-width: 5; line-offset: 2;}
  }
  ['rte_desc' = "MAX Green Line"] {
    line-color: #185;
    line-offset: -5;
      [zoom < 15]{line-width: 2; line-offset: -3;}
      [zoom > 16]{line-width: 5; line-offset: -3;}
  }
  ['rte_desc' = "MAX Yellow Line"] {
    line-color: #fc2;
    line-offset: -2;
      [zoom < 15]{line-width: 2; line-offset: -1;}
      [zoom > 16]{line-width: 5; line-offset: -7;}
  }
}

/* WES */
#feb222015_tm_routes ['type' = "CR"] {
  line-width: 3;
  line-color: #8200ff;
  line-join: round;
  line-cap: round;
  [zoom < 15]{line-width: 2;}
  [zoom > 16]{line-width: 4;}
}

/* Streetcar */
#feb222015_tm_routes ['type' = "SC"] {
  line-join: round;
  line-cap: round;
  line-width: 2.5;
  ['rte_desc' = "CL Line"] {
    line-color: #1ac;
    line-offset: 1.5;
    [zoom < 15]{line-width: 1.5; line-offset:1;}
    [zoom > 16]{line-width: 4; line-offset:2;}
  }
  ['rte_desc' = "NS Line"] {
    line-color: #9c4;
    line-offset:-0.5;
    [zoom < 15]{line-width: 1.5; line-offset:-1;}
    [zoom > 16]{line-width: 4; line-offset:-2;}
  }
}

/* Aerial Tram */
#feb222015_tm_routes ['type' = "AT"] {
  line-width: 2;
  line-color:#f100ff;
  line-join:round;
  line-cap:round;
  [zoom < 15]{line-width: 1.5;}
  [zoom > 16]{line-width: 3;}
}
