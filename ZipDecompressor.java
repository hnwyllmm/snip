public class ZipDecompressor {
    static void decompress(String inputFile, String outputDir) throws IOException {
        final File outDir = new File(outputDir);

        try (ZipInputStream zin = new ZipInputStream(new FileInputStream(inputFile))) {
            ZipEntry entry;
            String name, dir;
            String fileName = null;
            while ((entry = zin.getNextEntry()) != null) {
                name = entry.getName();
                if (fileName == null) {
                    fileName = name.replace(File.separator, "");
                }
                name = name.replace("/", File.separator);
                name = name.replace("\\", File.separator);

                if (entry.isDirectory()) {
                    mkdirs(outDir, name);
                    continue;
                }

                dir = dirPart(name);
                if (dir != null)
                    mkdirs(outDir, dir);

                extractFile(zin, outDir, name);
            }
        }

    }

    private static void mkdirs(File outDir, String path) {
        File d = new File(outDir, path);
        if (!d.exists())
            d.mkdirs();
    }

    private static String dirPart(String name) {
        File file = new File(name);
        return file.getParent();
    }

    private static void extractFile(ZipInputStream in, File outDir, String name) throws IOException {
        byte[] buffer = new byte[4096];
        int count;

        try (BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(new File(outDir, name)))) {
            while ((count = in.read(buffer)) != -1)
                out.write(buffer, 0, count);
        }
    }
}
