/*=====================================
   Each gene contains the code for a specific trait
   Instance Variables:
      genotype: int array to store a binary number
      value: corresponding base 10 number of the genotype
      geneLenght: desired length of the gene
  ====================================*/


class Gene {
	int geneLength;
	int[] genotype;
	int value;

	/*===================================== 
	Takes the length of the gene as a parameter,
	randomly sets every bit in the genotype array to
	a 1 or a 0, then calcuate the value.
	====================================*/
	Gene(int l) {
		geneLength = l;
		genotype = new int[geneLength];

		String s = "";
		for(int bit : genotype) {
			bit = int(random(1));
			s += str(bit);
		}
		value = Integer.parseInt(s,2);
	}
  
    /*=====================================
      Create a new gene that is a copy
      of the parameter
    ====================================*/
    Gene(Gene g) {
      geneLength = g.geneLength;
      genotype = new int[geneLength];
    
      String s = "";
      for(int i=0; i<geneLength; i++) {
        genotype[i] = g.genotype[i];
        s += str(genotype[i]);
      }
    
      value = Integer.parseInt(s,2);
    }
  
    /*=====================================
      Pick a random element from genotype
      and switch it from 1 to 0 or vice-versa
    ====================================*/ 
    void mutate() {
      int i = int(random(geneLength));
      genotype[i] = (genotype[i]==1 ? 0 : 1);
    }
  
    /*=====================================
    Go through the genotype and set value to the
    correct base 10 equivalent of the binary number
    ====================================*/
    void setValue() {
      String s = "";
      for(int bit : genotype) {
        s += str(bit);
      }
    
      value = Integer.parseInt(s,2);
    }
  
    /*=====================================
      Print the genotype array and value.
      Used for debugging and development only
    ====================================*/
    void display() {
      println(genotype);
      println(value);
    }
}