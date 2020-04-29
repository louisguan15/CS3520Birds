contains(Target, [Target|ListRem]).
contains(Target, [NotTarget|ListRem]) :-
	contains(Target, ListRem).
printAppearance(Bird) :-
	size(Bird, Size),
	shape(Bird, Shape),
	colorList(Bird, Colors),
	write('Size: '),
	writeln(Size),
	write('Shape: '),
	writeln(Shape),
	write('Colors: '),
	writeln(Colors).
printEnviro(Bird) :-
	habitatList(Bird, HabitatL),
	dietList(Bird, DietL),
	conStat(Bird, ConStat),
	write('Habitats Common: '),
	writeln(HabitatL),
	write('Primary Diets: '),
	writeln(DietL),
	write('Conservation Status: '),
	writeln(ConStat).
printBehavior(Bird) :-
	flightPatList(Bird, FlightPatL),
	callTypeList(Bird, CallL),
	write('Flight Pattern Characteristics: '),
	writeln(FlightPatL),
	write('Most Common Calls: '),
	writeln(CallL).
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
shape(mallard, duck).
shape(lesser_scaup, duck).
shape(long-tailed_duck, duck).
shape(mountain_quail, neoquail).
colorList(mallard, [grey]).
colorList(lesser_scaup, [grey,black]).
colorList(long-tailed_duck, [white,black]).
colorList(mountain_quail, [brown,grey]).
habitatList(mallard, [wetlands]).
habitatList(lesser_scaup, [wetlands]).
habitatList(long-tailed_duck, [wetlands]).
habitatList(mountain_quail, [chaparral]).
dietList(mallard, [omnivorous]).
dietList(lesser_scaup, [insectivorous,herbivorous]).
dietList(long-tailed_duck, [insectivorous,piscivorous]).
dietList(mountain_quail, [herbivorous]).
conStat(mallard, lc).
conStat(lesser_scaup, lc).
conStat(long-tailed_duck, vu).
conStat(mountain_quail, lc).
flightPatList(mallard, [strongFlap,direct]).
flightPatList(lesser_scaup, [rapidFlap,direct]).
flightPatList(long-tailed_duck, [direct,rapidTurn]).
flightPatList(mountain_quail, [strongFlap,gliding]).
callTypeList(mallard, [quacking]).
callTypeList(lesser_scaup, [whistling,trilling]).
callTypeList(long-tailed_duck, [honking]).
callTypeList(mountain_quail, [whistling,chirping]).