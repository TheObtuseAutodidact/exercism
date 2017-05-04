# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`
DNA_TO_RNA = { "G": "C", "C": "G", "T": "A", "A": "U" }

def to_rna(dna_string):
    rna_string = ""
    for each in dna_string:
        if each not in DNA_TO_RNA:
            return ""
        else:
            rna_string += DNA_TO_RNA[each]
    return rna_string
