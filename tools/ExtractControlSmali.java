import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import jadx.api.JadxArgs;
import jadx.api.JadxDecompiler;

public class ExtractControlSmali {
    public static void main(String[] input) throws Exception {
        Files.createDirectories(Path.of("work/control"));
        if (input.length == 0) input = new String[] {
            "com.tzh.wifi.wificam.model.base.BaseCmd",
            "com.tzh.wifi.wificam.activity.PlayActivity",
            "com.tzh.wifi.wificam.view.rudder.Rudder"
        };
        JadxArgs args = new JadxArgs();
        args.setOutDir(new File("work/control/api"));
        args.setInputFiles(List.of(new File("sample.apk")));
        args.setSkipResources(true);
        try (JadxDecompiler jadx = new JadxDecompiler(args)) {
            jadx.load();
            for (String name : input) {
                String smali = jadx.searchJavaClassByOrigFullName(name).getSmali();
                Path target = Path.of("work/control", name.substring(name.lastIndexOf('.') + 1) + ".smali");
                Files.writeString(target, smali);
                System.out.println(target + " " + smali.length());
            }
        }
    }
}
