.class Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper$_lancet;
.super Ljava/lang/Object;


# direct methods
.method static com_miui_home_launcher_debug_LauncherLoadTrace_loadFavorites(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "loadFavorites"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherProvider$DatabaseHelper"
    .end annotation

    const-string v0, "loadFavorites"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$001(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method static com_miui_home_launcher_debug_LauncherLoadTrace_parseDefaultLayout(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 1
    .annotation runtime Lme/ele/lancet/base/annotations/Insert;
        value = "parseDefaultLayout"
    .end annotation

    .annotation runtime Lme/ele/lancet/base/annotations/TargetClass;
        scope = .enum Lme/ele/lancet/base/Scope;->SELF:Lme/ele/lancet/base/Scope;
        value = "com.miui.home.launcher.LauncherProvider$DatabaseHelper"
    .end annotation

    const-string v0, "parseDefaultLayout"

    invoke-static {v0}, Lcom/miui/home/launcher/debug/LauncherLoadTrace;->finishLauncher(Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;->access$002(Lcom/miui/home/launcher/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method
