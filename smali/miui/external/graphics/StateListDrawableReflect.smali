.class public Lmiui/external/graphics/StateListDrawableReflect;
.super Ljava/lang/Object;
.source "StateListDrawableReflect.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lmiui/graphics/drawable/StateListDrawableCompat;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result p0

    return p0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 56
    invoke-static {p0, p1}, Lmiui/graphics/drawable/StateListDrawableCompat;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lmiui/graphics/drawable/StateListDrawableCompat;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object p0

    return-object p0
.end method
