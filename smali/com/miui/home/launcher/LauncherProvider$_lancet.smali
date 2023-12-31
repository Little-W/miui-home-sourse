.class Lcom/miui/home/launcher/LauncherProvider$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_debug_LauncherLoadTrace_loadDefaultWorkspace(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "loadDefaultWorkspace"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherProvider"
    .end annotation

    const-string v0, "loadDefaultWorkspace"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider;->access$000(Lcom/miui/home/launcher/LauncherProvider;Lcom/miui/home/launcher/allapps/LauncherMode;Lcom/miui/home/launcher/model/LauncherAppsProvider;)V

    return-void
.end method
