(
fork{
	var dif;

	~lcnensamble = ['Hernani','Libertad','Eduardo','Emilio','JoseCaos'].scramble;

	~puesto = [['ritmo: '],['melodia: '],['armonía: ']].scramble;
	// diferencia entre integrantes y puestos
	dif = ~lcnensamble.size - ~puesto.size;

	// do  cantidad de integrantes
	~lcnensamble.size.do({|i=0|

		~integrante = ~lcnensamble.removeAt(0);

		if(i > dif,{

			var ultimos = ~puesto[rrand(0,2)].add(~integrante);

			switch(~lcnensamble.size,
				1,ultimos,
				2,ultimos
			);

			},{
				~puesto[i].add(~integrante);
				// i = i + 1;

		});

		// resultado por pasos
		// ~puesto.postcln;

		0.1.wait
	});

	// resultado
	~puesto.postcln;

}.value;

);