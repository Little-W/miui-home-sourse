.class public Lcom/miui/home/library/compat/LauncherActivityInfoCompat;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# direct methods
.method public static getActivityInfo(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 14
    sget-boolean v0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0

    .line 17
    :cond_0
    const-class v0, Landroid/content/pm/LauncherActivityInfo;

    const-class v1, Landroid/content/pm/ActivityInfo;

    .line 18
    invoke-static {v1}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mActivityInfo"

    .line 17
    invoke-static {v0, p0, v2, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static getIconResource(Landroid/content/pm/LauncherActivityInfo;)I
    .locals 0

    .line 23
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getActivityInfo(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
