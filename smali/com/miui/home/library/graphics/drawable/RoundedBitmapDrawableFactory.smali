.class public final Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;
.super Ljava/lang/Object;
.source "RoundedBitmapDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
    }
.end annotation


# direct methods
.method public static create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 71
    new-instance v0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable21;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
