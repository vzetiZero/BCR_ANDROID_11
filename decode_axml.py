import struct, sys

RES_STRING_POOL = 0x0001
RES_XML = 0x0003
RES_XML_START_NS = 0x0100
RES_XML_END_NS = 0x0101
RES_XML_START_ELEMENT = 0x0102
RES_XML_END_ELEMENT = 0x0103
RES_XML_CDATA = 0x0104
RES_XML_RESOURCE_MAP = 0x0180

def read_string_pool(data, off):
    header_size = struct.unpack_from('<H', data, off + 2)[0]
    size = struct.unpack_from('<I', data, off + 4)[0]
    string_count, style_count, flags, strings_start, styles_start = struct.unpack_from('<IIIII', data, off + 8)
    utf8 = bool(flags & 0x100)
    offsets = struct.unpack_from('<%dI' % string_count, data, off + header_size)
    strings = []
    for o in offsets:
        p = off + strings_start + o
        if utf8:
            # utf16 length then utf8 length (1 or 2 bytes each)
            n = data[p]; p += 1
            if n & 0x80:
                n = ((n & 0x7f) << 8) | data[p]; p += 1
            n2 = data[p]; p += 1
            if n2 & 0x80:
                n2 = ((n2 & 0x7f) << 8) | data[p]; p += 1
            strings.append(data[p:p + n2].decode('utf-8', 'replace'))
        else:
            n = struct.unpack_from('<H', data, p)[0]; p += 2
            if n & 0x8000:
                n = ((n & 0x7fff) << 16) | struct.unpack_from('<H', data, p)[0]; p += 2
            strings.append(data[p:p + n * 2].decode('utf-16-le', 'replace'))
    return strings, size

def format_value(typ, val, strings, resmap):
    TYPES = {0x00: 'NULL', 0x01: 'REF', 0x02: 'ATTR', 0x03: 'STRING', 0x04: 'FLOAT',
             0x05: 'DIMENSION', 0x06: 'FRACTION', 0x10: 'INT_DEC', 0x11: 'INT_HEX',
             0x12: 'INT_BOOLEAN', 0x03: 'STRING'}
    if typ == 0x03:
        return repr(strings[val]) if val < len(strings) else str(val)
    if typ == 0x12:
        return 'true' if val else 'false'
    if typ == 0x01:
        return '@ref/0x%08x' % val
    if typ == 0x11:
        return '0x%08x' % val
    return str(val)

def decode(path):
    data = open(path, 'rb').read()
    typ, hsz, size = struct.unpack_from('<HHI', data, 0)
    strings = []
    resmap = []
    out = []
    pos = hsz
    depth = 0
    while pos < size:
        ctype, chsz, csize = struct.unpack_from('<HHI', data, pos)
        if csize == 0:
            break
        if ctype == RES_STRING_POOL:
            strings, _ = read_string_pool(data, pos)
        elif ctype == RES_XML_RESOURCE_MAP:
            n = (csize - chsz) // 4
            resmap = list(struct.unpack_from('<%dI' % n, data, pos + chsz))
        elif ctype == RES_XML_START_ELEMENT:
            ns, name, attr_start, attr_size, attr_count = struct.unpack_from('<IIHHH', data, pos + chsz)
            attrs = []
            for i in range(attr_count):
                a = pos + chsz + attr_start + i * attr_size
                a_ns, a_name, a_raw, a_tsize, a_res0, a_type, a_data = struct.unpack_from('<IIIHBBI', data, a)
                aname = strings[a_name] if a_name < len(strings) else str(a_name)
                if a_raw != 0xFFFFFFFF and a_type == 0x03:
                    v = repr(strings[a_raw])
                else:
                    v = format_value(a_type, a_data, strings, resmap)
                attrs.append((aname, v))
            line = '  ' * depth + '<' + strings[name]
            for an, av in attrs:
                line += '\n' + '  ' * (depth + 1) + '%s=%s' % (an, av)
            line += '>'
            out.append(line)
            depth += 1
        elif ctype == RES_XML_END_ELEMENT:
            depth -= 1
            ns, name = struct.unpack_from('<II', data, pos + chsz)
            nm = strings[name] if name < len(strings) else '?'
            out.append('  ' * depth + '</%s>' % nm)
        elif ctype == RES_XML_CDATA:
            pass
        pos += csize
    return '\n'.join(out)

if __name__ == '__main__':
    print(decode(sys.argv[1]))
