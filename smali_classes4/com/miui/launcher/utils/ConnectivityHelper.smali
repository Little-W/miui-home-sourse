.class public Lcom/miui/launcher/utils/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# static fields
.field private static final JP_SB:Ljava/lang/String; = "jp_sb"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTetheringSupported(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 15
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 17
    array-length p0, p0

    if-eqz p0, :cond_0

    const-string p0, "ro.miui.customized.region"

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "jp_sb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
