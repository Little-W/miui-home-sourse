.class public Lcom/miui/home/library/compat/LauncherAppsCompatVO;
.super Lcom/miui/home/library/compat/LauncherAppsCompatVN_MR1;
.source "LauncherAppsCompatVO.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/library/compat/LauncherAppsCompatVN_MR1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    const/4 v0, 0x0

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/miui/home/library/compat/LauncherAppsCompatVO;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 22
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 p2, 0x800000

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    :cond_0
    move-object p0, v0

    :cond_1
    return-object p0

    :catch_0
    return-object v0
.end method
