.class Lcom/miui/home/launcher/LauncherModel$LoaderTask$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_debug_LauncherLoadTrace_loadAllApps(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "loadAllApps"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherModel$LoaderTask"
    .end annotation

    const-string v0, "loadAllApps"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$001(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    return-void
.end method

.method static com_miui_home_launcher_debug_LauncherLoadTrace_loadAndBindMissingIcons(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "loadAndBindMissingIcons"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherModel$LoaderTask"
    .end annotation

    const-string v0, "loadAndBindMissingIcons"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$000(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)V

    return-void
.end method

.method static com_miui_home_launcher_debug_LauncherLoadTrace_loadAndBindScreens(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "loadAndBindScreens"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherModel$LoaderTask"
    .end annotation

    const-string v0, "loadAndBindScreens"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$002(Lcom/miui/home/launcher/LauncherModel$LoaderTask;)V

    return-void
.end method

.method static com_miui_home_launcher_debug_LauncherLoadTrace_loadAndBindWorkspace(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "loadAndBindWorkspace"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherModel$LoaderTask"
    .end annotation

    const-string v0, "loadAndBindWorkspace"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/miui/home/launcher/LauncherModel$LoaderTask;->access$003(Lcom/miui/home/launcher/LauncherModel$LoaderTask;Z)V

    return-void
.end method
