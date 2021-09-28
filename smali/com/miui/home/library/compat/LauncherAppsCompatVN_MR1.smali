.class public Lcom/miui/home/library/compat/LauncherAppsCompatVN_MR1;
.super Lcom/miui/home/library/compat/LauncherAppsCompatVL;
.source "LauncherAppsCompatVN_MR1.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/miui/home/library/compat/LauncherAppsCompatVL;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hasShortcutHostPermission()Z
    .locals 3

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVN_MR1;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Launcher.Apps"

    const-string v2, "Failed to make shortcut manager call"

    .line 22
    const/4 v0, 0x0

    return v0
.end method
