encode country, gen(country1)
xtset country1 year
xtline y
xtline y, overlay
regress rgdpna xr pl_con pl_gdpo pl_i pl_g newvar cgdpe
xi: regress rgdpna xr pl_con pl_gdpo pl_i pl_g cgdpe newvar i.country
xtreg rgdpna xr pl_con pl_gdpo pl_i pl_g cgdpe newvar , fe
xtreg rgdpna xr pl_con pl_gdpo pl_i pl_g cgdpe newvar , re
xtreg rgdpna xr pl_con pl_gdpo pl_i pl_g cgdpe newvar , fe
estimates store fixed
xtreg rgdpna xr pl_con pl_gdpo pl_i pl_g cgdpe newvar , re
estimates store random
hausman fixed random, sigmamore
xtreg rgdpna xr pl_con pl_gdpo pl_i pl_g cgdpe newvar , re
xttest0
reg rgdpna xr pl_con pl_gdpo pl_i pl_g newvar cgdpe
test xr pl_con pl_gdpo pl_i pl_g newvar cgdpe
  