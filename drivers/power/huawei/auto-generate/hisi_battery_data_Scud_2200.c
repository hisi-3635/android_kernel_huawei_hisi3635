/* DO NOT EDIT - Generated automatically by build.py */

static struct single_row_lut Scud_2200_fcc_temp = {
	.x		= {-20, -10, 0, 25, 40, 60},
	.y		= {2250, 2249, 2248, 2256, 2249, 2240},
	.cols	= 6
};

static struct single_row_lut Scud_2200_fcc_sf = {
	.x		= {0, 100, 200, 300, 400, 500},
	.y		= {100, 96, 94, 92, 90, 88},
	.cols	= 6
};

static struct sf_lut Scud_2200_pc_sf = {
	.rows = 1,
	.cols = 1,
	.row_entries = {0},
	.percent = {100},
	.sf = {
		{100}
	}
};


static struct sf_lut Scud_2200_rbatt_sf = {
	.rows = 28,
	.cols = 6,
	.row_entries = {-20, -10, 0, 25, 40, 60},
	.percent = {100, 95, 90, 85, 80, 75, 70, 65, 60, 55, 50, 45, 40, 35, 30, 25, 20, 15, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1},
	.sf = {
		{2991, 1465, 612, 190, 142, 123},
		{2986, 1465, 612, 190, 142, 123},
		{2784, 1484, 630, 192, 143, 123},
		{2627, 1471, 646, 196, 146, 125},
		{2543, 1484, 673, 204, 149, 127},
		{2419, 1410, 697, 214, 154, 130},
		{2428, 1385, 662, 226, 162, 133},
		{2423, 1377, 644, 248, 173, 141},
		{2424, 1383, 618, 245, 180, 146},
		{2446, 1398, 604, 199, 155, 130},
		{2486, 1435, 612, 187, 142, 124},
		{2557, 1495, 627, 187, 143, 125},
		{2664, 1577, 656, 192, 146, 127},
		{2800, 1683, 703, 195, 150, 131},
		{2978, 1817, 768, 195, 147, 130},
		{3193, 1978, 849, 195, 141, 122},
		{3470, 2192, 954, 197, 142, 122},
		{3871, 2505, 1131, 204, 146, 124},
		{6381, 2997, 1169, 208, 150, 131},
		{7192, 3329, 1253, 212, 151, 131},
		{8030, 3697, 1385, 221, 153, 131},
		{8946, 4134, 1560, 228, 156, 132},
		{10050, 4684, 1765, 236, 159, 134},
		{11293, 5339, 2005, 246, 164, 132},
		{12758, 6095, 2347, 256, 162, 132},
		{14659, 7183, 2763, 269, 164, 136},
		{18107, 8652, 3469, 302, 178, 140},
		{28886, 11012, 4559, 418, 218, 182},
	}
};

static struct pc_temp_ocv_lut Scud_2200_pc_temp_ocv = {
	.rows = 29,
	.cols = 6,
	.temp = {-20, -10, 0, 25, 40, 60},
	.percent = {100, 95, 90, 85, 80, 75, 70, 65, 60, 55, 50, 45, 40, 35, 30, 25, 20, 15, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0},
	.ocv = {
		{4321, 4319, 4317, 4314, 4309, 4301},
		{4223, 4233, 4239, 4246, 4243, 4236},
		{4156, 4169, 4179, 4188, 4185, 4178},
		{4094, 4111, 4124, 4133, 4130, 4124},
		{4037, 4060, 4075, 4081, 4078, 4073},
		{3971, 3995, 4023, 4034, 4031, 4025},
		{3932, 3946, 3971, 3989, 3988, 3982},
		{3896, 3904, 3927, 3951, 3949, 3944},
		{3863, 3868, 3885, 3908, 3909, 3905},
		{3836, 3838, 3849, 3861, 3862, 3859},
		{3813, 3817, 3823, 3831, 3831, 3828},
		{3798, 3802, 3803, 3810, 3809, 3806},
		{3786, 3792, 3790, 3793, 3792, 3789},
		{3775, 3782, 3781, 3780, 3779, 3775},
		{3763, 3772, 3772, 3768, 3764, 3759},
		{3749, 3755, 3759, 3754, 3746, 3733},
		{3733, 3730, 3738, 3733, 3725, 3712},
		{3713, 3708, 3708, 3704, 3697, 3686},
		{3681, 3682, 3676, 3677, 3670, 3659},
		{3673, 3676, 3670, 3674, 3668, 3656},
		{3665, 3669, 3665, 3670, 3664, 3653},
		{3655, 3660, 3659, 3664, 3660, 3648},
		{3644, 3650, 3650, 3655, 3652, 3640},
		{3629, 3636, 3636, 3635, 3637, 3617},
		{3604, 3608, 3608, 3596, 3598, 3578},
		{3562, 3566, 3559, 3542, 3544, 3524},
		{3498, 3502, 3493, 3467, 3474, 3453},
		{3387, 3403, 3395, 3360, 3372, 3353},
		{3200, 3200, 3200, 3200, 3200, 3200},
	}
};

struct hisi_smartstar_coul_battery_data Scud_2200_battery_data = {
	.id_voltage_min = 130,
	.id_voltage_max = 330,
	.fcc = 2200,
	.fcc_temp_lut  = &Scud_2200_fcc_temp,
	.fcc_sf_lut = &Scud_2200_fcc_sf,
	.pc_temp_ocv_lut = &Scud_2200_pc_temp_ocv,
	.pc_sf_lut = &Scud_2200_pc_sf,
	.rbatt_sf_lut = &Scud_2200_rbatt_sf,
	.default_rbatt_mohm = 100,
	.max_currentmA = 1000,
    .max_voltagemV = 4352,
    .max_cin_currentmA = 1200,
    .terminal_currentmA = 100,
    .charge_in_temp_5 = 3,
    .charge_in_temp_10 = 3,
    .batt_brand = "ALE-SCUD-2200",
};