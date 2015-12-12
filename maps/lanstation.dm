
//**************************************************************
// Map Datum -- Ministation
//**************************************************************

/datum/map/active
	nameShort = "lan"
	nameLong = "LanStation"
	tDomeX = 128
	tDomeY = 76
	tDomeZ = 2
	zLevels = list(
		/datum/zLevel/station,
		/datum/zLevel/centcomm,
		/datum/zLevel/space{
			name = "spaceOldSat" ;
			},
		/datum/zLevel/mining,
		)

////////////////////////////////////////////////////////////////

#include "lanstation.dmm"

///
// Remove jobs que não são usados na /lan/station
///

/datum/job/chef/config_check()
	return 0

/datum/job/qm/config_check()
	return 0

/datum/job/mining/config_check()
	return 0

/datum/job/mime/config_check()
	return 0

/datum/job/librarian/config_check()
	return 0

/datum/job/lawyer/config_check()
	return 0

/datum/job/chaplain/config_check()
	return 0

/datum/job/chief_engineer/config_check()
	return 0

/datum/job/mechanic/config_check()
	return 0

/datum/job/atmos/config_check()
	return 0

/datum/job/cmo/config_check()
	return 0

/datum/job/virologist/config_check()
	return 0

/datum/job/rd/config_check()
	return 0

/datum/job/hos/config_check()
	return 0

/datum/job/warden/config_check()
	return 0
///
// Ajusta jobs existentes para serem usados na /lan/station
///

/datum/job/captain/New()
	..()
	supervisors = "Nanotrasen and Central Command"

/datum/job/hop/New()
	..()
	supervisors = "the captain and Central Command"

/datum/job/hop/get_access()
	return get_all_accesses()

// Cargo

/datum/job/cargo_tech/New()
	..()
	total_positions = 3
	spawn_positions = 3
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_qm, access_mint, access_mining, access_mining_station)
	minimal_access = list(access_maint_tunnels, access_cargo, access_cargo_bot, access_mining, access_mint, access_mining_station, access_mailsorting)

// Engineering

/datum/job/engineer/New()
	..()
	total_positions = 3
	spawn_positions = 3
	access = list(access_eva, access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_atmospherics, access_tcomsat)
	minimal_access = list(access_engine, access_engine_equip, access_tech_storage, access_maint_tunnels, access_external_airlocks, access_construction, access_tcomsat, access_atmospherics)

// Medical

/datum/job/doctor/New()
	..()
	total_positions = 3
	spawn_positions = 3
	access = list(access_medical, access_morgue, access_surgery, access_virology, access_genetics)
	minimal_access = list(access_medical, access_morgue, access_surgery)


/datum/job/chemist/New()
	..()
	total_positions = 1
	spawn_positions = 1
	access = list(access_medical, access_morgue, access_chemistry, access_virology)
	minimal_access = list(access_medical, access_chemistry)

/datum/job/geneticist/New()
	..()
	total_positions = 2
	spawn_positions = 2
	access = list(access_medical, access_morgue, access_virology, access_genetics)
	minimal_access = list(access_medical)

// Science

/datum/job/scientist/New()
	..()
	total_positions = 3
	spawn_positions = 3
	access = list(access_tox, access_tox_storage, access_research, access_xenobiology)
	minimal_access = list(access_tox, access_tox_storage, access_research, access_xenobiology)

// Security

/datum/job/officer/New()
	..()
	total_positions = 3
	spawn_positions = 3
