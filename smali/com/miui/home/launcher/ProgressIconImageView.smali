.class public Lcom/miui/home/launcher/ProgressIconImageView;
.super Lcom/miui/home/launcher/LauncherIconImageView;
.source "ProgressIconImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsDrawMaml:Z

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mProgress:I

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mIsDrawMaml:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mProgress:I

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mIsDrawMaml:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mProgress:I

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mIsDrawMaml:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 49
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    iget-object v0, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mIsDrawMaml:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ProgressIconImageView;->setVisibility(I)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 55
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isNewIcons()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconImageViewPadding()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressIconImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    .line 58
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressIconImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 62
    :goto_0
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 63
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressIconImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget p0, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mProgress:I

    invoke-static {v0, p1, v1, p0}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setIsDrawMaml(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mIsDrawMaml:Z

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/miui/home/launcher/ProgressIconImageView;->mProgress:I

    .line 40
    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressIconImageView;->postInvalidate()V

    return-void
.end method
