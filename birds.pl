contains(Target, [Target|ListRem]).
contains(Target, [NotTarget|ListRem]) :-
	contains(Target, ListRem).
printSize(Bird) :-
	size(Bird, Size),
	write('Size: '),
	writeln(Size).
printShape(Bird) :-
	shape(Bird, Shape),
	write('Shape: '),
	writeln(Shape).
printColors(Bird) :-
	colorList(Bird, Colors),
	write('Colors: '),
	writeln(Colors).
printHabitats(Bird) :-
	habitatList(Bird, HabitatL),
	write('Habitats Common: '),
	writeln(HabitatL).
printDiets(Bird) :-
	dietList(Bird, DietL),
	write('Primary Diets: '),
	writeln(DietL).
printConStat(Bird) :-
	conStat(Bird, ConStat),
	write('Conservation Status: '),
	writeln(ConStat).
printFlightPats(Bird) :-
	flightPatList(Bird, FlightPatL),
	write('Flight Pattern Characteristics: '),
	writeln(FlightPatL).
printCalls(Bird) :-
	callTypeList(Bird, CallL),
	write('Most Common Calls: '),
	writeln(CallL).
printAppearance(Bird) :-
	printSize(Bird),
	printShape(Bird),
	printColors(Bird).
printEnviro(Bird) :-
	printHabitats(Bird),
	printDiets(Bird),
	printConStat(Bird).
printBehavior(Bird) :-
	printFlightPats(Bird),
	printCalls(Bird).
printCasual(Bird) :-
	printAppearance(Bird),
	printBehavior(Bird).
printBiology(Bird) :-
	printEnviro(Bird),
	printBehavior(Bird).
printEncyclo(Bird) :-
	printAppearance(Bird),
	printEnviro(Bird).
printComprehensive(Bird) :-
	printEncyclo(Bird),
	printBehavior(Bird).
colorSrx(Bird, Color) :-
	colorList(Bird, ColorL),
	contains(Color, ColorL).
habitatSrx(Bird, Habitat) :-
	habitatList(Bird, HabitatL),
	contains(Habitat, HabitatL).
dietSrx(Bird, Diet) :-
	dietList(Bird, DietL),
	contains(Diet, DietL).
flightPatSrx(Bird, FlightPat) :-
	flightPatList(Bird, FlightPatL),
	contains(FlightPat, FlightPatL).
callTypeSrx(Bird, CallType) :-
	callTypeList(Bird, CallL),
	contains(Call, CallL).
appearanceSrx(Bird, Size, Shape, Color) :-
	size(Bird, Size),
	shape(Bird, Shape),
	colorSrx(Bird, Color).
enviroSrx(Bird, Habitat, Diet, ConStat) :-
	habitatSrx(Bird, Habitat),
	dietSrx(Bird, Diet),
	conStat(Bird, ConStat).
behaviorSrx(Bird, FlightPat, Call) :-
	flightPatSrx(Bird, FlightPat),
	callTypeSrx(Bird, Call).
casualSrx(Bird, Size, Shape, Color, FlightPat, Call) :-
	appearance(Bird, Size, Shape, Color),
	behavior(Bird, FlightPat, Call).
biologySrx(Bird, Habitat, Diet, ConStat, FlightPat, Call) :-
	enviro(Bird, Habitat, Diet, ConStat),
	behavior(Bird, FlightPat, Call).
encycloSrx(Bird, Size, Shape, Color, Habitat, Diet, ConStat) :-
	appearance(Bird, Size, Shape, Color),
	enviro(Bird, Habitat, Diet, ConStat).
comprehensiveSrx(Bird, Size, Shape, Color, Habitat, Diet, ConStat, FlightPat, Call) :-
	encyclo(Bird, Size, Shape, Color, Habitat, Diet, ConStat),
	behavior(Bird, FlightPat, Call).
sameSize(InBird, OutBird) :-
	size(InBird, Size),
	size(OutBird, Size).
sameShape(InBird, OutBird) :-
	shape(InBird, Shape),
	shape(OutBird, Shape).
sameColor(InBird, OutBird) :-
	colorList(InBird, ColorL),
	colorList(OutBird, ColorL).
sameHabitat(InBird, OutBird) :-
	habitatList(InBird, HabitatL),
	habitatList(OutBird, HabitatL).
sameDiet(InBird, OutBird) :-
	dietList(InBird, DietL),
	dietList(OutBird, DietL).
sameConStat(InBird, OutBird) :-
	conStat(InBird, ConStat),
	conStat(OutBird, ConStat).
sameFlight(InBird, OutBird) :-
	flightPatList(InBird, FlightPatL),
	flightPatList(OutBird, FlightPatL).
sameCall(InBird, OutBird) :-
	callTypeList(InBird, CallL),
	callTypeList(OutBird, CallL).
sameAppearance(InBird, OutBird) :-
	sameSize(InBird, OutBird),
	sameShape(InBird, OutBird),
	sameColor(InBird, OutBird).
sameEnviro(InBird, OutBird) :-
	sameHabitat(InBird, OutBird),
	sameDiet(InBird, OutBird),
	sameConStat(InBird, OutBird).
sameBehavior(InBird, OutBird) :-
	sameFlight(InBird, OutBird),
	sameCall(InBird, OutBird).
sameCasual(InBird, OutBird) :-
	sameAppearance(InBird, OutBird),
	sameBehavior(InBird, OutBird).
sameBiology(InBird, OutBird) :-
	sameEnviro(InBird, OutBird),
	sameBehavior(InBird, OutBird).
sameEncyclo(InBird, OutBird) :-
	sameAppearance(InBird, OutBird),
	sameEnviro(InBird, OutBird).
sameComp(InBird, OutBird) :-
	sameEncyclo(InBird, OutBird),
	sameBehavior(InBird, OutBird).

size(mallard, large).
size(lesser_scaup, large).
size(long-tailed_duck, large).
size(mountain_quail, medium).
size(swainson's_hawk, medium).
size(american_crow, medium).
size(band-tailed_pigeon, medium).
size(northern_mockingbird, small).
size(california_gull, medium).
shape(mallard, duck).
shape(lesser_scaup, duck).
shape(long-tailed_duck, duck).
shape(mountain_quail, neoquail).
shape(swainson's_hawk, hawk).
shape(american_crow, crow).
shape(band-tailed_pigeon, pigeon).
shape(northern_mockingbird, robin).
shape(california_gull, gull).
colorList(mallard, [grey]).
colorList(lesser_scaup, [grey,black]).
colorList(long-tailed_duck, [white,black]).
colorList(mountain_quail, [brown,grey]).
colorList(swainson's_hawk, [brown,grey]).
colorList(american_crow, [black]).
colorList(band-tailed_pigeon, [grey]).
colorList(northern_mockingbird, [brown,grey]).
colorList(california_gull, [white,grey]).
habitatList(mallard, [wetlands]).
habitatList(lesser_scaup, [wetlands]).
habitatList(long-tailed_duck, [wetlands]).
habitatList(mountain_quail, [chaparral]).
habitatList(swainson's_hawk, [grasslands]).
habitatList(american_crow, [Ubiquitous]).
habitatList(band-tailed_pigeon, [coniferous_forests]).
habitatList(northern_mockingbird, [suburban]).
habitatList(california_gull, [coast]).
dietList(mallard, [omnivorous]).
dietList(lesser_scaup, [insectivorous,herbivorous]).
dietList(long-tailed_duck, [insectivorous,piscivorous]).
dietList(mountain_quail, [herbivorous]).
dietList(swainson's_hawk, [carnivorous]).
dietList(american_crow, [omnivorous]).
dietList(band-tailed_pigeon, [herbivorous, frugivorous]).
dietList(northern_mockingbird, [frugivorous, insectivorous]).
dietList(california_gull, [omnivorous]).
conStat(mallard, lc).
conStat(lesser_scaup, lc).
conStat(long-tailed_duck, vu).
conStat(mountain_quail, lc).
conStat(swainson's_hawk, lc).
conStat(american_crow, lc).
conStat(band-tailed_pigeon, lc).
conStat(northern_mockingbird, lc).
conStat(california_gull, lc).
flightPatList(mallard, [strongFlap,direct]).
flightPatList(lesser_scaup, [rapidFlap,direct]).
flightPatList(long-tailed_duck, [direct,rapidTurn]).
flightPatList(mountain_quail, [strongFlap,gliding]).
flightPatList(swainson's_hawk, [strongFlap,gliding]).
flightPatList(american_crow, [slowFlap,direct]).
flightPatList(band-tailed_pigeon, [strongFlap,direct]).
flightPatList(northern_mockingbird, [rapidFlap,rapidTurn]).
flightPatList(california_gull, [rapidFlap,direct]).
callTypeList(mallard, [quacking]).
callTypeList(lesser_scaup, [whistling,trilling]).
callTypeList(long-tailed_duck, [honking]).
callTypeList(mountain_quail, [whistling,chirping]).
callTypeList(swainson's_hawk, [whistling]).
callTypeList(american_crow, [cawing]).
callTypeList(band-tailed_pigeon, [chirping, cooing]).
callTypeList(northern_mockingbird, [chirping, whistling]).
callTypeList(california_gull, [chirping, whistling]).
