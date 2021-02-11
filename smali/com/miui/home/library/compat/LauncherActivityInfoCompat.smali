.class public Lcom/miui/home/library/compat/LauncherActivityInfoCompat;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# direct methods
.method public static getActivityInfo(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 13
    const-class v0, Landroid/content/pm/LauncherActivityInfo;

    const-string v1, "mActivityInfo"

    const-class v2, Landroid/content/pm/ActivityInfo;

    .line 14
    invoke-static {v2}, Lcom/miui/launcher/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v0, p0, v1, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static getIconResource(Landroid/content/pm/LauncherActivityInfo;)I
    .locals 0

    .line 18
    invoke-static {p0}, Lcom/miui/home/library/compat/LauncherActivityInfoCompat;->getActivityInfo(Landroid/content/pm/LauncherActivityInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
