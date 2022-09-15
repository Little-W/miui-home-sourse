.class public Lcom/miui/home/launcher/common/PhoneCornerRadius;
.super Ljava/lang/Object;
.source "PhoneCornerRadius.java"


# direct methods
.method public static getBottomPhoneRadius(Landroid/content/Context;)I
    .locals 1

    const-string v0, "rounded_corner_radius_bottom"

    .line 21
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PhoneCornerRadius;->getPhoneRadius(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getPhoneRadius(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .line 33
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "vince"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 37
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "rounded_corner_radius_top"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "rounded_corner_radius_top"

    const-string v0, "dimen"

    const-string v2, "android"

    .line 40
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_1
    const-string p1, "rounded_corner_radius_bottom"

    const-string v0, "dimen"

    const-string v2, "android"

    .line 42
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    if-lez p1, :cond_2

    .line 46
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    return v1
.end method

.method public static getTopPhoneRadius(Landroid/content/Context;)I
    .locals 1

    const-string v0, "rounded_corner_radius_top"

    .line 17
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/PhoneCornerRadius;->getPhoneRadius(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
