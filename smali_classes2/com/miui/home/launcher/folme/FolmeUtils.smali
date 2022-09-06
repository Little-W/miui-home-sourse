.class public Lcom/miui/home/launcher/folme/FolmeUtils;
.super Ljava/lang/Object;
.source "FolmeUtils.java"


# direct methods
.method public static calAnimScale(Landroid/view/View;)F
    .locals 1

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    .line 22
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v0, p0, v0

    div-float/2addr v0, p0

    return v0
.end method

.method public static isEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
