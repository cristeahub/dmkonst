from sys import stdin
import argparse

opcodes = {
        'lw': 0x23,
        'sw': 0x2b,
        'beq': 0x4,
        'lui': 0xf,
        }
instruction_formats = {
        'r': ['add', 'sub', 'and', 'or', 'slt', 'sll', 'srl'],
        'i': ['lw', 'sw', 'beq', 'lui'],
        'j': ['j'],
        'nop': ['nop'],
        }

funct_codes = {
        'add': 0x20,
        'sub': 0x22,
        'and': 0x24,
        'or': 0x25,
        'slt': 0x2a,
        'sll': 0x00,
        'srl': 0x02,
        }


def parse_r_type(instruction_tokens):
    instruction = instruction_tokens[0]
    opcode = 0

    alu_function = funct_codes[instruction]

    if instruction in ['add', 'sub', 'and', 'or', 'slt']:
        rd, rs, rt = map(lambda e: int(e[1:]), list(instruction_tokens)[1:4])
        shamt = 0

    if instruction in ['sll', 'srl']:
        rd, rt = map(lambda e: int(e[1:]), list(instruction_tokens)[1:3])
        shamt = eval(instruction_tokens[3])
        rs = 0

    return "{:08X}".format((opcode << 26) + (rs << 21) + (rt << 16) + (rd << 11) + (shamt << 6) + alu_function)


def parse_i_type(instruction_tokens):
    instruction = instruction_tokens[0]
    opcode = opcodes[instruction]

    rt = int(instruction_tokens[1][1:])

    if instruction == 'lw' or instruction == 'sw':
        imm, rs = instruction_tokens[2].split('($')
        imm = int(imm)
        rs = int(rs[:-1])
    elif instruction == 'lui':
        rs = 0
        imm = int(instruction_tokens[2])
    elif instruction == 'beq':
        rt = int(instruction_tokens[2][1:])
        rs = int(instruction_tokens[1][1:])
        imm = int(instruction_tokens[3])

    # return (opcode << 26) + (rs << 21) + (rt << 16) + imm

    return "{:04X}{:04X}".format((opcode << 10) + (rs << 5) + rt, imm % 2 ** 16)


def parse_j_type(instruction_tokens):
    opcode = 2
    address = int(instruction_tokens[1])

    return "{:08X}".format((opcode << 26) + address)


def parse(source):
    program = []
    for raw_instruction in source:
        instruction_tokens = raw_instruction.strip().replace(',', '').split(' ')
        instruction = instruction_tokens[0]

        instruction_format = ''
        for key, value in instruction_formats.iteritems():
            if instruction in value:
                instruction_format = key
                break

        encoded_instruction = "00000000"  # Default to nop
        if instruction_format == 'r':
            encoded_instruction = parse_r_type(instruction_tokens)
        if instruction_format == 'i':
            encoded_instruction = parse_i_type(instruction_tokens)
        if instruction_format == 'j':
            encoded_instruction = parse_j_type(instruction_tokens)

        program.append([encoded_instruction, raw_instruction])
    return program


def change_endianness(inst):
    out = ""
    pairs = map(lambda x,y: y+x, inst[0:][::2], inst[1:][::2])
    out += "".join(pairs)[::-1]
    return out

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="MIPS Assembler")
    parser.add_argument('--hostcomm', dest='hostcomm', action='store_true', help='Will reverse endianness, and produce bare hex output')
    args = parser.parse_args()

    program = parse(stdin)

    if args.hostcomm:
        output = ""
        for encoded_instruction, _ in program:
            output += change_endianness(encoded_instruction)
        print output
    else:
        output = []
        for encoded_instruction, raw_instruction in program:
            output.append('X"{}", -- {}'.format(encoded_instruction, raw_instruction))

        output[-1] = output[-1].replace(',', '', 1)

        print ''.join(output)
