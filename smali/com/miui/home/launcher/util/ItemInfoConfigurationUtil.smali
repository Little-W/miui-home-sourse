.class public Lcom/miui/home/launcher/util/ItemInfoConfigurationUtil;
.super Ljava/lang/Object;
.source "ItemInfoConfigurationUtil.java"


# direct methods
.method public static isShowDownloadWaringDialog(I)Z
    .locals 1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ef

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
