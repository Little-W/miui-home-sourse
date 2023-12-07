.class public Lcom/miui/home/recents/views/FixedSizeImageView;
.super Lcom/miui/home/recents/views/AlphaOptimizedImageView;
.source "FixedSizeImageView.java"


# instance fields
.field private mAllowInvalidate:Z

.field private mAllowRelayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/home/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/views/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 32
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0}, Lcom/miui/home/recents/views/AlphaOptimizedImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0}, Lcom/miui/home/recents/views/AlphaOptimizedImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAllowInvalidate(Z)V
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void
.end method

.method public setAllowRelayout(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 66
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 69
    :cond_1
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 72
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/home/recents/views/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 74
    iput-boolean v1, p0, Lcom/miui/home/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void
.end method
