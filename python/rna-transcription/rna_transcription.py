DNA_TO_RNA = { "G": "C", "C": "G", "T": "A", "A": "U" }

def to_rna(dna_string):
    rna_string = []
    for each in dna_string:
        if each not in DNA_TO_RNA:
            return ""
        else:
            rna_string.append(DNA_TO_RNA[each])
    return "".join(rna_string)
