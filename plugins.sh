#!/bin/bash
echo "**********************************************************************"
echo "******************** Running YIKES Update Script *********************"
echo "**********************************************************************"
printf "\n"

installs='aatravelers adesis aidslp alliancewe ascinc baums casapapel ccahatool ccardev
		cedarpointbar chop d3b decibelcloud delawarenature designthinkstd dineoutforlife 
		equityproject firststatecc flyingfish gbscloud gbscidpfnd gbscidpforums harvestmkt hivprevention htjewelry
		iba inoutsource kimberton lindaleealter movingt mstonepartners
		multimeasures museumcn nursepartners oacce patatgiovannis pennmutualblog philafight phillymagic
		phlcontroller phlgeekawards phrootz pjerome pmexperiences researchforact riverfrontn
		soulfullproj spicermullikin steverotfeld tredyffrin waverly
		yikescloud yikesplugins'

for install in $installs;
do
  echo "**********************************************************************"
  echo "Site: $install ($install@$install.ssh.wpengine.net)"
  printf "\n"
  ssh $install@$install.ssh.wpengine.net 'cd /sites/$install; wp core update; wp core language update; wp theme update --all; wp plugin update --all --exclude=slider-pro,slider-pro-assets,mailgun,woocommerce,gutenberg; exit;'
  echo "**********************************************************************"
  printf "\n\n"
done

echo "**********************************************************************"
echo "******************* YIKES Update Script Complete *********************"
echo "**********************************************************************"
printf "\n"
