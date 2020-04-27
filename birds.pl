appearance(Bird, Size, Shape, Color) :-
	size(Bird, Size),
	shape(Bird, Shape),
	color(Bird, Color).
enviro(Bird, Habitat, Diet, ConStat) :-
	habitat(Bird, Habitat),
	diet(Bird, Diet),
	conStat(Bird, ConStat).
behavior(Bird, FlightPat, Call) :-
	flightPat(Bird, FlightPat),
	callType(Bird, Call).
casual(Bird, Size, Shape, Color, FlightPat, Call) :-
	appearance(Bird, Size, Shape, Color),
	behavior(Bird, FlightPat, Call).
biology(Bird, Habitat, Diet, ConStat, FlightPat, Call) :-
	enviro(Bird, Habitat, Diet, ConStat),
	behavior(Bird, FlightPat, Call).
encyclo(Bird, Size, Shape, Color, Habitat, Diet, ConStat) :-
	appearance(Bird, Size, Shape, Color),
	enviro(Bird, Habitat, Diet, ConStat).
comprehensive(Bird, Size, Shape, Color, Habitat, Diet, ConStat, FlightPat, Call) :-
	encyclo(Bird, Size, Shape, Color, Habitat, Diet, ConStat),
	behavior(Bird, FlightPat, Call).
simSize(InBird, OutBird) :-
	size(InBird, Size),
	size(OutBird, Size).
simShape(InBird, OutBird) :-
	shape(InBird, Shape),
	shape(OutBird, Shape).
simColor(InBird, OutBird) :-
	color(InBird, Color),
	color(OutBird, Color).
simHabitat(InBird, OutBird) :-
	habitat(InBird, Habitat),
	habitat(OutBird, Habitat).
simDiet(InBird, OutBird) :-
	diet(InBird, Diet),
	diet(OutBird, Diet).
simConStat(InBird, OutBird) :-
	conStat(InBird, ConStat),
	conStat(OutBird, ConStat).
simFlight(InBird, OutBird) :-
	flightPat(InBird, FlightPat),
	flightPat(OutBird, FlightPat).
simCall(InBird, OutBird) :-
	callType(InBird, Call),
	callType(OutBird, Call).
simAppearance(InBird, OutBird) :-
	simSize(InBird, OutBird),
	simShape(InBird, OutBird),
	simColor(InBird, OutBird).
simEnviro(InBird, OutBird) :-
	simHabitat(InBird, OutBird),
	simDiet(InBird, OutBird),
	simConStat(InBird, OutBird).
simBehavior(InBird, OutBird) :-
	simFlight(InBird, OutBird),
	simCall(InBird, OutBird).
simCasual(InBird, OutBird) :-
	simAppearance(InBird, OutBird),
	simBehavior(InBird, OutBird).
simBiology(InBird, OutBird) :-
	simEnviro(InBird, OutBird),
	simBehavior(InBird, OutBird).
simEncyclo(InBird, OutBird) :-
	simAppearance(InBird, OutBird),
	simEnviro(InBird, OutBird).
simComp(InBird, OutBird) :-
	simEncyclo(InBird, OutBird),
	simBehavior(InBird, OutBird).

size(mallard, large).
size(lesser_scaup, large).
shape(mallard, duck).
shape(lesser_scaup, duck).
color(mallard, grey).
color(lesser_scaup, grey).
color(lesser_scaup, black).
habitat(mallard, wetland).
habitat(lesser_scaup, wetland).
diet(mallard, omnivorous).
diet(lesser_scaup, insectivorous).
diet(lesser_scaup, herbivorous).
conStat(mallard, lc).
conStat(lesser_scaup, lc).
flightPat(mallard, strongFlap).
flightPat(mallard, direct).
flightPat(lesser_scaup, rapidFlap).
flightPat(lesser_scaup, direct).
callType(mallard, quacking).
callType(lesser_scaup, whistling).
callType(lesser_scaup, trilling).