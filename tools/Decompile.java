import java.io.File;
import jadx.api.JadxArgs;
import jadx.api.JadxDecompiler;

/** Static decompilation only: load the whole APK, save the application packages. */
public class Decompile {
    public static void main(String[] args) {
        if (args.length != 2) {
            throw new IllegalArgumentException("Usage: Decompile <sample.apk> <output-dir>");
        }
        JadxArgs config = new JadxArgs();
        config.setInputFile(new File(args[0]));
        config.setOutDir(new File(args[1]));
        config.setThreadsCount(4);
        config.setReplaceConsts(false);
        config.setInlineMethods(false);
        config.setClassFilter(name -> name.startsWith("com.tzh.") || name.startsWith("com.hmx."));
        try (JadxDecompiler jadx = new JadxDecompiler(config)) {
            jadx.load();
            jadx.save();
            jadx.printErrorsReport();
            System.out.println("JADX reported errors: " + jadx.getErrorsCount());
            // Partial decompilation is evidence with limitations, not a clean build.
            if (jadx.getErrorsCount() != 0) {
                System.exit(2);
            }
        }
    }
}
