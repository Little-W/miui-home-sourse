.class public Lcom/miui/privacy/utils/MiuiSettingsUtils;
.super Ljava/lang/Object;
.source "MiuiSettingsUtils.java"


# direct methods
.method public static getStringFromSystemProperites(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    invoke-static {p0, p1}, Lcom/miui/privacy/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
