.class public Lmiui/graphics/drawable/StateListDrawableCompat;
.super Ljava/lang/Object;
.source "StateListDrawableCompat.java"


# direct methods
.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result p0

    return p0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object p0

    return-object p0
.end method
