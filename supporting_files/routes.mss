Map {}

/*Buses*/
#trimet ['type' = "BUS"] {
    ::case {
    line-width: 8;
    line-color:#000;
    line-join:round;
    line-cap:round;
  }
  ::fill {
    line-width: 6;
    line-color:#ffffff;
    line-join:round;
    line-cap:round;
  }
}

#trimet ['type' = "BUS"] [zoom > 16]{
  ::case {
    line-width: 14;
  }
  ::fill {
    line-width: 12;
  }
}
#trimet ['type' = "BUS"] [zoom = 16]{
  ::case {
    line-width: 10;
  }
  ::fill {
    line-width: 8;
  }
}
#trimet ['type' = "BUS"] [zoom = 15]{
  ::case {
    line-width: 6;
  }
  ::fill {
    line-width: 4;
  }
}
#trimet ['type' = "BUS"] [zoom = 14]{
  ::case {
    line-width: 5;
  }
  ::fill {
    line-width: 3;
  }
}
#trimet ['type' = "BUS"] [zoom < 14]{
  ::case {
    line-width: 4;
  }
  ::fill {
    line-width: 2;
  }
}
/*MAX lines*/
#trimet ['route_desc' = "MAX Blue Line"] {
  line-width: 3;
  line-color:#248;
  line-join:round;
  line-cap:round;
  line-offset:4;
}
#trimet ['route_desc' = "MAX Red Line"] {
  line-width: 3;
  line-color:#d34;
  line-join:round;
  line-cap:round;
  line-offset:1;
}
#trimet ['route_desc' = "MAX Green Line"] {
  line-width: 3;
  line-color:#185;
  line-join:round;
  line-cap:round;
  line-offset:-5;
}
#trimet ['route_desc' = "MAX Yellow Line"] {
  line-width: 3;
  line-color:#fc2;
  line-join:round;
  line-cap:round;
  line-offset:-2;
}

#trimet ['route_desc' = "MAX Blue Line"][zoom < 15]{
  line-width: 2;
  line-offset:3;
}
#trimet ['route_desc' = "MAX Red Line"][zoom < 15]{
  line-width: 2;
  line-offset:1;
}
#trimet ['route_desc' = "MAX Green Line"][zoom < 15]{
  line-width: 2;
  line-offset:-3;
}
#trimet ['route_desc' = "MAX Yellow Line"][zoom < 15]{
  line-width: 2;
  line-offset:-1;
}

#trimet ['route_desc' = "MAX Blue Line"][zoom > 16]{
  line-width: 5;
  line-offset:6;
}
#trimet ['route_desc' = "MAX Red Line"][zoom > 16]{
  line-width: 5;
  line-offset:2;
}
#trimet ['route_desc' = "MAX Green Line"][zoom > 16]{
  line-width: 5;
  line-offset:-3;
}
#trimet ['route_desc' = "MAX Yellow Line"][zoom > 16]{
  line-width: 5;
  line-offset:-7;
}

/*WES*/
#trimet ['route_desc' = "WES Commuter Rail"] {
  line-width: 3;
  line-color:#8200ff;
  line-join:round;
  line-cap:round;
}
#trimet ['route_desc' = "WES Commuter Rail"][zoom < 15]{
  line-width: 2;
}
#trimet ['route_desc' = "WES Commuter Rail"][zoom > 16]{
  line-width: 4;
}

/*Streetcar*/
#trimet ['route_desc' = "CL Line"] {
  line-width: 2;
  line-color:#1ac;
  line-join:round;
  line-cap:round;
  line-offset:1.5;
}
#trimet ['route_desc' = "NS Line"] {
  line-width: 2;
  line-color:#9c4;
  line-join:round;
  line-cap:round;
  line-offset:-0.5;
}
#trimet ['route_desc' = "CL Line"][zoom < 15]{
  line-width: 1.5;
  line-offset:1;
}
#trimet ['route_desc' = "NS Line"][zoom < 15]{
  line-width: 1.5;
  line-offset:-1;
}
#trimet ['route_desc' = "CL Line"][zoom > 16]{
  line-width: 3;
  line-offset:1;
}
#trimet ['route_desc' = "NS Line"][zoom > 16]{
  line-width: 3;
  line-offset:-1;
}

/*Tram*/
#trimet ['route_desc' = "Portland Aerial Tram"] {
  line-width: 2;
  line-color:#f100ff;
  line-join:round;
  line-cap:round;
}
#trimet ['route_desc' = "Portland Aerial Tram"][zoom < 15]{
  line-width: 1.5;
}
#trimet ['route_desc' = "Portland Aerial Tram"][zoom > 16]{
  line-width: 3;
}