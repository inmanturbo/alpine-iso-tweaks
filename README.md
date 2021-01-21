# alpine-iso-tweaks

> Requires Docker

### extract iso

```
./extract /path/to/alpine/iso
```

### tweak iso

```
cd iso-contents
hack hack hack nano this vi that sed scribble scrabble boot/grub.cfg (adds intel_iommu=on)
```

### rebuild custom iso

```
./build [super-cool-distro-spin-name]
```

