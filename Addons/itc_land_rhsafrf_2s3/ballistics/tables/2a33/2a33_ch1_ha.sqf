// ARTY+ACE Module ballistics table.
// Magazine: itc_land_2a33hex_chg1
// Ammo: itc_land_155mm
// AirFriction: 0
// MuzzleVelocity: 85

private ["_btab", "_minRange", "_maxRange", "_minHeight", "_maxHeight", "_hstep"];

_minHeight = -2000;
_maxHeight = 2000;
_hstep = 100;
_minRange = 650.106;
_maxRange = 736.271;
_btab = [
    [45,183.785,[[1636.81,-2001.86,27.2167,215.511,-73.806],[1607.76,-1902.93,26.7333,210.964,-73.447],[1577.71,-1803.01,26.2333,206.269,-73.059],[1546.65,-1702.32,25.7167,201.427,-72.639],[1514.6,-1601.14,25.1833,196.442,-72.1838],[1482.54,-1502.75,24.65,191.469,-71.705],[1448.49,-1401.26,24.0833,186.202,-71.1683],[1413.43,-1300.08,23.5,180.797,-70.5831],[1378.37,-1202.23,22.9167,175.412,-69.9619],[1341.3,-1102.42,22.3,169.744,-69.2625],[1302.24,-1001.26,21.65,163.798,-68.473],[1262.17,-901.8,20.9833,157.735,-67.6016],[1220.1,-802.061,20.2833,151.411,-66.6118],[1175.02,-700.53,19.5333,144.69,-65.4556],[1127.94,-600.375,18.75,137.74,-64.1282],[1077.85,-500.433,17.9167,130.435,-62.5615],[1023.76,-400.145,17.0167,122.67,-60.6616],[965.662,-301.277,16.05,114.5,-58.3367],[900.551,-201.365,14.9667,105.605,-55.3096],[825.423,-100.384,13.7167,95.78,-51.1324],[736.271,-0.432704,12.2333,84.9459,-44.9635],[617.068,99.4963,10.25,72.5193,-34.0242],[368.639,183.785,6.11667,60.1041,-0.0414553]]],
    [46,190.204,[[1615.9,-2001.09,27.35,215.476,-74.096],[1587.36,-1902.04,26.8667,210.922,-73.7432],[1557.83,-1801.98,26.3667,206.219,-73.3619],[1527.32,-1701.16,25.85,201.37,-72.9491],[1496.82,-1602.96,25.3333,196.532,-72.516],[1464.34,-1501.3,24.7833,191.395,-72.0309],[1431.86,-1402.6,24.2333,186.272,-71.5191],[1397.42,-1301.17,23.65,180.856,-70.9446],[1361.99,-1200.32,23.05,175.305,-70.3168],[1325.58,-1100.35,22.4333,169.623,-69.6288],[1288.18,-1001.55,21.8,163.815,-68.8726],[1248.81,-901.806,21.1333,157.735,-68.0167],[1207.48,-801.765,20.4333,151.391,-67.0441],[1164.18,-702.114,19.7,144.797,-65.9342],[1117.93,-601.493,18.9167,137.818,-64.6318],[1068.72,-501.056,18.0833,130.481,-63.0942],[1015.58,-400.233,17.1833,122.676,-61.2285],[958.5,-300.79,16.2167,114.457,-58.9438],[894.535,-200.234,15.1333,105.498,-55.966],[822.698,-101.023,13.9167,95.8438,-51.9707],[736.1,-0.723692,12.45,84.9775,-45.9853],[620.964,99.9603,10.5,72.4538,-35.4179],[369.038,190.202,6.23333,59.0461,-0.143412]]],
    [47,196.616,[[1594.19,-2000.74,27.4833,215.46,-74.3921],[1566.18,-1901.55,27,210.899,-74.0457],[1537.19,-1801.34,26.5,206.189,-73.6712],[1507.24,-1700.38,25.9833,201.332,-73.2658],[1477.29,-1602.03,25.4667,196.485,-72.8404],[1445.4,-1500.21,24.9167,191.338,-72.3639],[1413.52,-1401.36,24.3667,186.206,-71.8611],[1380.67,-1302.61,23.8,180.933,-71.3132],[1345.88,-1201.49,23.2,175.37,-70.6973],[1310.14,-1101.24,22.5833,169.674,-70.0223],[1273.42,-1002.16,21.95,163.851,-69.2803],[1234.77,-902.118,21.2833,157.753,-68.4402],[1194.19,-801.762,20.5833,151.39,-67.4855],[1151.68,-701.781,19.85,144.773,-66.3957],[1106.27,-600.808,19.0667,137.769,-65.1164],[1058.93,-501.945,18.25,130.547,-63.6372],[1006.75,-400.57,17.35,122.701,-61.8068],[950.714,-300.534,16.3833,114.434,-59.5638],[888.878,-200.784,15.3167,105.548,-56.686],[818.347,-100.628,14.1,95.8018,-52.7638],[734.289,-0.223725,12.65,84.9179,-46.9483],[625.11,99.4043,10.7667,72.526,-36.937],[368.108,196.615,6.33333,57.97,-0.106029]]],
    [48,203.013,[[1571.64,-2000.81,27.6167,215.462,-74.6941],[1544.16,-1901.47,27.1333,210.894,-74.3542],[1515.72,-1801.12,26.6333,206.177,-73.9867],[1487.28,-1703.21,26.1333,201.469,-73.6021],[1456.95,-1601.48,25.6,196.457,-73.1714],[1426.62,-1502.54,25.0667,191.457,-72.7183],[1394.39,-1400.48,24.5,186.159,-72.2103],[1362.16,-1301.56,23.9333,180.875,-71.6724],[1328.04,-1200.26,23.3333,175.3,-71.0677],[1293.92,-1102.48,22.7333,169.745,-70.4234],[1256.95,-1000.54,22.0833,163.754,-69.6761],[1219.03,-900.297,21.4167,157.639,-68.8507],[1180.17,-802.066,20.7333,151.409,-67.9358],[1138.46,-701.741,20,144.77,-66.8666],[1093.91,-600.401,19.2167,137.739,-65.6112],[1047.47,-501.155,18.4,130.487,-64.1589],[997.229,-401.171,17.5167,122.748,-62.3962],[942.249,-300.524,16.55,114.432,-60.1963],[881.581,-200.099,15.4833,105.483,-57.3711],[813.33,-100.459,14.2833,95.783,-53.5727],[732.755,-1.00402,12.8667,85.0059,-48.0036],[626.586,99.9903,11,72.4442,-38.2699],[411.404,199.871,7.21667,57.4041,-7.77678],[366.851,203.011,6.43333,56.8762,-0.0863291]]],
    [49,209.385,[[1548.44,-2001.32,27.75,215.485,-75.0018],[1521.48,-1901.83,27.2667,210.911,-74.6686],[1493.6,-1801.31,26.7667,206.186,-74.3084],[1464.79,-1700.02,26.25,201.313,-73.9184],[1435.97,-1601.34,25.7333,196.45,-73.509],[1406.23,-1502.23,25.2,191.441,-73.0647],[1375.56,-1402.94,24.65,186.288,-72.5815],[1343.03,-1300.88,24.0667,180.838,-72.0389],[1310.5,-1202.15,23.4833,175.405,-71.4627],[1276.11,-1101.41,22.8667,169.683,-70.8136],[1240.79,-1001.83,22.2333,163.83,-70.0997],[1203.61,-901.256,21.5667,157.698,-69.2912],[1164.58,-800.345,20.8667,151.297,-68.3719],[1124.61,-702.009,20.15,144.787,-67.3468],[1080.93,-600.287,19.3667,137.73,-66.116],[1035.38,-500.643,18.55,130.447,-64.6916],[986.123,-400.228,17.6667,122.672,-62.9617],[933.145,-300.774,16.7167,114.452,-60.8411],[874.59,-201.149,15.6667,105.579,-58.1174],[807.67,-100.531,14.4667,95.7888,-54.3969],[729.597,-0.990613,13.0667,85.0025,-49.0014],[628.288,99.5212,11.25,72.5049,-39.725],[442.401,199.773,7.91667,57.4111,-13.7535],[365.26,209.384,6.53333,55.7651,-0.0856505]]],
    [50,215.727,[[1524.4,-2002.29,27.8833,215.529,-75.3152],[1497.99,-1902.63,27.4,210.947,-74.9888],[1470.67,-1801.94,26.9,206.216,-74.636],[1442.44,-1700.47,26.3833,201.335,-74.254],[1414.21,-1601.62,25.8667,196.463,-73.853],[1385.07,-1502.32,25.3333,191.445,-73.4177],[1355.02,-1402.85,24.7833,186.282,-72.9442],[1323.15,-1300.58,24.2,180.821,-72.4126],[1291.28,-1201.65,23.6167,175.377,-71.8479],[1257.58,-1100.7,23,169.641,-71.2116],[1222.98,-1000.9,22.3667,163.773,-70.5118],[1186.55,-900.099,21.7,157.626,-69.719],[1149.22,-801.299,21.0167,151.358,-68.8397],[1109.15,-700.364,20.2833,144.675,-67.8116],[1067.26,-600.48,19.5167,137.743,-66.6305],[1022.64,-500.422,18.7,130.43,-65.2349],[975.283,-401.391,17.8333,122.764,-63.573],[923.376,-301.3,16.8833,114.496,-61.4976],[866.006,-200.97,15.8333,105.562,-58.8297],[801.35,-100.858,14.65,95.8208,-55.2359],[724.856,-0.150053,13.25,84.9037,-49.9454],[628.328,99.5027,11.4833,72.5048,-41.1],[460.771,199.806,8.41667,57.3984,-17.8448],[363.335,215.725,6.63333,54.637,-0.105461]]],
    [51,222.03,[[1498.65,-2000.26,28,215.436,-75.6232],[1472.79,-1900.5,27.5167,210.848,-75.3034],[1446.94,-1803.03,27.0333,206.267,-74.9694],[1419.31,-1701.37,26.5167,201.378,-74.5955],[1391.67,-1602.33,26,196.498,-74.2031],[1363.14,-1502.84,25.4667,191.471,-73.777],[1332.83,-1400.19,24.9,186.142,-73.2992],[1302.52,-1300.68,24.3333,180.826,-72.7932],[1271.32,-1201.54,23.75,175.37,-72.2403],[1238.33,-1100.37,23.1333,169.621,-71.6173],[1204.46,-1000.34,22.5,163.739,-70.9319],[1169.69,-901.766,21.85,157.729,-70.1754],[1132.25,-800.244,21.15,151.289,-69.2938],[1093.92,-701.284,20.4333,144.736,-68.31],[1052.91,-600.995,19.6667,137.779,-67.1545],[1009.22,-500.506,18.85,130.435,-65.7885],[962.863,-401.018,17.9833,122.733,-64.1611],[912.046,-300.426,17.0333,114.42,-62.1274],[856.77,-201.06,16,105.569,-59.5553],[793.471,-100.13,14.8167,95.7449,-56.0344],[720.364,-0.652558,13.45,84.9598,-50.9781],[626.753,99.984,11.7,72.4373,-42.3994],[473.408,199.943,8.83333,57.3691,-21.1845],[361.074,222.028,6.73333,53.4924,-0.147392]]],
    [52,228.286,[[1473.13,-2002.18,28.1333,215.523,-75.9475],[1447.84,-1902.24,27.65,210.928,-75.6349],[1421.67,-1801.26,27.15,206.182,-75.2969],[1395.51,-1702.73,26.65,201.443,-74.9429],[1367.6,-1600.33,26.1167,196.398,-74.5465],[1339.69,-1500.72,25.5833,191.362,-74.1293],[1310.9,-1400.92,25.0333,186.18,-73.6754],[1281.25,-1301.2,24.4667,180.854,-73.1805],[1250.72,-1201.84,23.8833,175.386,-72.6398],[1218.45,-1100.43,23.2667,169.624,-72.0303],[1185.31,-1000.15,22.6333,163.727,-71.3598],[1151.29,-901.331,21.9833,157.701,-70.6196],[1115.53,-801.908,21.3,151.396,-69.778],[1077.16,-700.305,20.5667,144.669,-68.7935],[1037.91,-601.847,19.8167,137.838,-67.6876],[995.171,-500.911,19,130.465,-66.3521],[949.817,-400.948,18.1333,122.727,-64.7604],[900.974,-301.534,17.2,114.514,-62.8072],[846.898,-201.433,16.1667,105.602,-60.2939],[785.844,-101,15,95.8324,-56.9022],[714.325,-0.327536,13.6333,84.9206,-51.9581],[625.361,99.3369,11.9333,72.5223,-43.8142],[483.194,199.771,9.21667,57.3932,-24.2444],[357.598,228.286,6.81667,52.3312,-0.0342936]]],
    [53,234.489,[[1445.96,-2001.13,28.25,215.474,-76.2667],[1421.24,-1901.06,27.7667,210.873,-75.9609],[1396.51,-1803.29,27.2833,206.278,-75.6416],[1370.09,-1701.31,26.7667,201.374,-75.2841],[1343.66,-1601.95,26.25,196.478,-74.9088],[1316.38,-1502.12,25.7167,191.433,-74.5012],[1288.24,-1402.1,25.1667,186.241,-74.0578],[1259.26,-1302.15,24.6,180.904,-73.5744],[1229.42,-1202.55,24.0167,175.425,-73.0461],[1197.87,-1100.89,23.4,169.65,-72.4506],[1165.48,-1000.36,22.7667,163.739,-71.7953],[1132.23,-901.275,22.1167,157.697,-71.0717],[1097.27,-801.577,21.4333,151.374,-70.249],[1060.61,-701.934,20.7167,144.779,-69.309],[1021.4,-600.915,19.95,137.771,-68.2043],[980.472,-501.65,19.15,130.519,-66.9254],[936.137,-401.196,18.2833,122.745,-65.3703],[888.391,-301.251,17.35,114.489,-63.461],[835.53,-200.563,16.3167,105.52,-61.0018],[776.7,-100.818,15.1667,95.8124,-57.7306],[707.64,-0.275687,13.8167,84.9129,-52.9557],[622.38,99.1983,12.15,72.5386,-45.1542],[489.375,199.983,9.55,57.3523,-26.8831],[354.669,234.487,6.91667,51.1544,-0.121955]]],
    [54,240.63,[[1418.06,-2000.58,28.3667,215.449,-76.5913],[1393.92,-1900.39,27.8833,210.841,-76.2926],[1369.77,-1802.49,27.4,206.24,-75.9806],[1343.96,-1700.37,26.8833,201.328,-75.6313],[1318.15,-1600.87,26.3667,196.424,-75.2645],[1291.5,-1500.91,25.8333,191.37,-74.8662],[1264.02,-1400.75,25.2833,186.169,-74.4329],[1235.71,-1300.65,24.7167,180.822,-73.9603],[1206.57,-1200.9,24.1333,175.332,-73.4438],[1176.6,-1101.77,23.5333,169.7,-72.8777],[1144.96,-1000.98,22.9,163.775,-72.238],[1112.48,-901.614,22.25,157.717,-71.5316],[1078.34,-801.625,21.5667,151.376,-70.7282],[1042.54,-701.678,20.85,144.761,-69.8101],[1004.24,-600.333,20.0833,137.729,-68.7306],[964.268,-500.728,19.2833,130.449,-67.4805],[921.801,-401.774,18.4333,122.791,-65.9906],[875.169,-301.28,17.5,114.49,-64.1266],[824.374,-201.535,16.4833,105.609,-61.7655],[766.918,-100.925,15.3333,95.8219,-58.5736],[700.302,-0.512171,14,84.9385,-53.9698],[617.864,99.6124,12.35,72.4804,-46.4242],[493.792,199.975,9.86667,57.3493,-29.4036],[350.567,240.629,7,49.9618,-0.0500852]]],
    [55,246.701,[[1389.51,-2000.55,28.4833,215.447,-76.9211],[1365.94,-1900.23,28,210.833,-76.6297],[1342.38,-1802.19,27.5167,206.225,-76.3251],[1318,-1703.19,27.0167,201.464,-75.9955],[1291.99,-1600.28,26.4833,196.394,-75.6262],[1265.99,-1500.17,25.95,191.332,-75.2374],[1239.99,-1402.85,25.4167,186.279,-74.8275],[1212.36,-1302.5,24.85,180.922,-74.3669],[1183.91,-1202.48,24.2667,175.42,-73.8634],[1153.85,-1100.38,23.65,169.619,-73.2957],[1123.78,-1002.01,23.0333,163.837,-72.6879],[1092.09,-902.361,22.3833,157.763,-71.999],[1058.77,-802.067,21.7,151.404,-71.2153],[1023.83,-701.8,20.9833,144.768,-70.3196],[986.45,-600.114,20.2167,137.713,-69.2662],[947.447,-500.152,19.4167,130.405,-68.0457],[906.007,-400.819,18.5667,122.713,-66.5905],[861.316,-301.636,17.65,114.52,-64.8034],[811.749,-201.271,16.6333,105.583,-62.4994],[756.495,-101.336,15.5,95.8625,-59.4305],[692.303,-1.05237,14.1833,84.9991,-54.9995],[612.672,99.7238,12.55,72.4631,-47.7156],[496.476,199.835,10.1667,57.369,-31.8067],[346.965,246.698,7.1,48.7543,-0.191402]]],
    [56,252.696,[[1360.2,-2001.07,28.6,215.47,-77.2561],[1337.22,-1900.59,28.1167,210.85,-76.972],[1314.25,-1802.41,27.6333,206.235,-76.6751],[1290.48,-1703.25,27.1333,201.467,-76.3538],[1265.13,-1600.19,26.6,196.388,-75.9938],[1240.57,-1503.01,26.0833,191.477,-75.6268],[1214.42,-1402.43,25.5333,186.257,-75.215],[1187.49,-1301.91,24.9667,180.889,-74.7658],[1159.76,-1201.72,24.3833,175.377,-74.2747],[1131.24,-1102.14,23.7833,169.721,-73.7364],[1101.13,-1000.87,23.15,163.768,-73.1279],[1070.24,-901.022,22.5,157.679,-72.4556],[1037.76,-800.521,21.8167,151.303,-71.6907],[1003.69,-700.036,21.1,144.648,-70.8161],[968.043,-600.271,20.35,137.723,-69.8107],[930.811,-501.961,19.5667,130.54,-68.647],[889.618,-400.205,18.7,122.663,-67.2013],[846.048,-300.593,17.7833,114.429,-65.4569],[798.518,-201.324,16.7833,105.587,-63.2459],[744.65,-100.675,15.65,95.7936,-60.2521],[682.86,-0.734717,14.35,84.9608,-55.9822],[606.811,99.517,12.75,72.4889,-49.0268],[497.491,199.646,10.45,57.3974,-34.0948],[342.225,252.694,7.18333,47.5316,-0.168543]]],
    [57,258.607,[[1330.19,-2002.13,28.7167,215.518,-77.5959],[1307.81,-1901.5,28.2333,210.892,-77.3193],[1285.43,-1803.17,27.75,206.27,-77.0303],[1261.51,-1700.58,27.2333,201.336,-76.7067],[1237.59,-1600.61,26.7167,196.409,-76.3669],[1212.9,-1500.16,26.1833,191.33,-75.9977],[1188.21,-1402.5,25.65,186.26,-75.6085],[1161.98,-1301.79,25.0833,180.883,-75.171],[1134.97,-1201.41,24.5,175.359,-74.6926],[1107.19,-1101.65,23.9,169.691,-74.1681],[1077.87,-1000.17,23.2667,163.725,-73.5752],[1047.78,-900.106,22.6167,157.621,-72.92],[1016.92,-801.785,21.95,151.384,-72.1933],[983.74,-700.95,21.2333,144.709,-71.3423],[949.02,-600.818,20.4833,137.761,-70.3637],[911.986,-500.091,19.6833,130.399,-69.2053],[873.409,-401.841,18.85,122.793,-67.8514],[830.974,-301.632,17.9333,114.517,-66.1555],[783.909,-200.129,16.9167,105.475,-63.9655],[732.216,-100.322,15.8,95.7563,-61.0884],[672.807,-0.721412,14.5167,84.9577,-56.9815],[599.51,99.9068,12.9333,72.4341,-50.2735],[496.894,199.484,10.7167,57.4213,-36.2716],[337.178,258.605,7.26667,46.2945,-0.171092]]],
    [58,264.427,[[1298.76,-2000.26,28.8167,215.433,-77.9314],[1277.74,-1902.97,28.35,210.96,-77.6715],[1255.22,-1801.11,27.85,206.172,-77.3806],[1232.7,-1701.7,27.35,201.39,-77.0759],[1209.42,-1601.55,26.8333,196.455,-76.7454],[1185.4,-1500.92,26.3,191.369,-76.3863],[1160.63,-1400.06,25.75,186.131,-75.9956],[1135.85,-1302.17,25.2,180.903,-75.5822],[1109.58,-1201.59,24.6167,175.368,-75.1168],[1082.55,-1101.61,24.0167,169.689,-74.6066],[1054.77,-1002.54,23.4,163.866,-74.0453],[1025.5,-902.147,22.75,157.748,-73.4089],[994.715,-801.074,22.0667,151.338,-72.6845],[963.185,-702.284,21.3667,144.799,-71.876],[929.402,-601.769,20.6167,137.828,-70.9249],[893.366,-500.634,19.8167,130.439,-69.7987],[855.079,-400.055,18.9667,122.65,-68.4539],[814.54,-301.281,18.0667,114.486,-66.8315],[769.496,-200.85,17.0667,105.541,-64.7364],[719.197,-100.291,15.95,95.7518,-61.9387],[662.141,-1.02666,14.6833,84.9914,-57.9964],[591.572,99.9823,13.1167,72.4219,-51.541],[494.728,199.419,10.9667,57.4289,-38.3414],[331.819,264.424,7.35,45.0434,-0.201445]]],
    [59,270.149,[[1267.36,-2002.47,28.9333,215.533,-78.2807],[1246.2,-1901.58,28.45,210.894,-78.0192],[1225.04,-1802.97,27.9667,206.26,-77.7459],[1202.42,-1700.1,27.45,201.312,-77.4398],[1180.54,-1603.03,26.95,196.529,-77.129],[1157.19,-1502.2,26.4167,191.434,-76.7803],[1133.11,-1401.14,25.8667,186.188,-76.4007],[1108.3,-1300.12,25.3,180.791,-75.9866],[1083.5,-1202.25,24.7333,175.405,-75.5471],[1057.23,-1102.06,24.1333,169.714,-75.0513],[1029.51,-1000.12,23.5,163.721,-74.4907],[1001.78,-902.123,22.8667,157.745,-73.8875],[971.866,-800.798,22.1833,151.319,-73.1833],[941.222,-701.75,21.4833,144.762,-72.3973],[908.39,-600.959,20.7333,137.77,-71.4722],[874.098,-501.577,19.95,130.509,-70.4005],[836.888,-400.545,19.1,122.688,-69.0946],[797.488,-301.293,18.2,114.486,-67.5183],[753.712,-200.329,17.2,105.492,-65.4812],[705.557,-100.595,16.1,95.7817,-62.8023],[650.106,-0.449604,14.8333,84.9234,-58.9689],[582.982,99.7278,13.3,72.4543,-52.8273],[491.05,199.515,11.2,57.4093,-40.3093],[325.42,270.148,7.41667,43.7783,-0.0484425]]]
];

[_btab, _minRange, _maxRange, _minHeight, _maxHeight, _hstep]
