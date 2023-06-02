import random
from functools import reduce

amino_acid_codon = {
    "A": ["GCU", "GCC", "GCA", "GCG"],
    "C": ["UGU", "UGC"],
    "D": ["GAU", "GAC"],
    "E": ["GAA", "GAG"],
    "F": ["UUU", "UUC"],
    "G": ["GGU", "GGC", "GGA", "GGG"],
    "H": ["CAU", "CAC"],
    "I": ["AUU", "AUC", "AUA"],
    "K": ["AAA", "AAG"],
    "L": ["UUA", "UUG", "CUU", "CUC", "CUA", "CUG"],
    "M": ["AUG"],
    "N": ["AAU", "AAC"],
    "P": ["CCU", "CCC", "CCA", "CCG"],
    "Q": ["CAA", "CAG"],
    "R": ["CGU", "CGC", "CGA", "CGG", "AGA", "AGG"],
    "S": ["UCU", "UCC", "UCA", "UCG", "AGU", "AGC"],
    "T": ["ACU", "ACC", "ACA", "ACG"],
    "V": ["GUU", "GUC", "GUA", "GUG"],
    "W": ["UGG"],
    "Y": ["UAU", "UAC"],
    "STOP": ["UAA", "UAG", "UGA"]
}


def protein_sequence_to_arnm(protein_sequence):
    return reduce(lambda x, y: x + random.choice(amino_acid_codon[y]), protein_sequence, "AUG") + \
        random.choice(amino_acid_codon["STOP"])


def start_and_end_of_promoter_region(input_path):
    array_for_a = ['T', 'TAT', 'TATA', 'TATAA']
    array_for_t = ['', 'TA']
    flag = ''
    result = ''
    iteracion = False
    with open(input_path, 'r') as f:
        contenido = f.read()
        for caracter in contenido:
            if caracter == 'T' and flag in array_for_t:
                flag = flag + caracter
            elif caracter == 'A' and flag in array_for_a:
                flag = flag + caracter
            else:
                flag = ''

            if flag == 'TATAAA':
                iteracion = not iteracion
                flag = ''

            if iteracion:
                result = result + caracter

    return result[1:-5]


# Press the green button in the gutter to run the script.
if __name__ == '__main__':
    print(start_and_end_of_promoter_region('./input.txt'))
