.class public Lcom/miui/home/launcher/common/StorageContextGetter;
.super Ljava/lang/Object;
.source "StorageContextGetter.java"


# direct methods
.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method
