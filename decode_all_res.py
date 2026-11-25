import os, sys, glob
from decode_axml import decode

root = sys.argv[1]
outdir = sys.argv[2]
count = 0
failed = []
for dirpath, dirnames, filenames in os.walk(os.path.join(root, 'res')):
    for fn in filenames:
        if not fn.endswith('.xml'):
            continue
        src = os.path.join(dirpath, fn)
        with open(src, 'rb') as f:
            magic = f.read(4)
        if magic[:2] != b'\x03\x00':
            continue
        rel = os.path.relpath(src, root)
        dst = os.path.join(outdir, rel)
        os.makedirs(os.path.dirname(dst), exist_ok=True)
        try:
            text = decode(src)
            with open(dst, 'w', encoding='utf-8') as f:
                f.write(text + '\n')
            count += 1
        except Exception as e:
            failed.append((rel, str(e)))
print('decoded', count, 'files into', outdir)
for r, e in failed:
    print('FAIL', r, e)
