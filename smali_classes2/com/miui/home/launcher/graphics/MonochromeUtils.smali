.class public Lcom/miui/home/launcher/graphics/MonochromeUtils;
.super Ljava/lang/Object;
.source "MonochromeUtils.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sCurrentColor:I

.field private static sMonoEnable:Z


# direct methods
.method public static getColor()I
    .locals 1

    .line 44
    sget v0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->sCurrentColor:I

    return v0
.end method

.method public static getMonochrome(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 28
    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->isSupportMonochrome()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/graphics/MonochromeUtils;->isMonoEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Class;

    new-array v6, v0, [Ljava/lang/Object;

    const-string v3, "getMonochrome"

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 20
    sput-object p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->mContext:Landroid/content/Context;

    .line 21
    sget-object p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "key_monochrome"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getBooleanFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->sMonoEnable:Z

    .line 23
    sget-object p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "key_monochrome_color"

    invoke-static {p0, v1, v0}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getIntFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->sCurrentColor:I

    return-void
.end method

.method public static isMonoEnable()Z
    .locals 1

    .line 48
    sget-boolean v0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->sMonoEnable:Z

    return v0
.end method

.method public static isSupportMonochrome()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setCurrentColor(I)V
    .locals 0

    .line 36
    sput p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->sCurrentColor:I

    return-void
.end method

.method public static setMonoEnable(Z)V
    .locals 0

    .line 40
    sput-boolean p0, Lcom/miui/home/launcher/graphics/MonochromeUtils;->sMonoEnable:Z

    return-void
.end method
