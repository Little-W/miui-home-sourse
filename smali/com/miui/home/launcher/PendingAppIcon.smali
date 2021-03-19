.class public Lcom/miui/home/launcher/PendingAppIcon;
.super Landroid/widget/ImageView;
.source "PendingAppIcon.java"


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 25
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mAnimator:Landroid/animation/ValueAnimator;

    .line 26
    iget-object p1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$002(Lcom/miui/home/launcher/PendingAppIcon;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mProgress:I

    return p1
.end method


# virtual methods
.method public animProgress(I)V
    .locals 3

    .line 36
    iget v0, p0, Lcom/miui/home/launcher/PendingAppIcon;->mProgress:I

    sub-int/2addr p1, v0

    .line 38
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 39
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 40
    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/miui/home/launcher/PendingAppIcon$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/home/launcher/PendingAppIcon$1;-><init>(Lcom/miui/home/launcher/PendingAppIcon;II)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    iget-object p1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/miui/home/launcher/PendingAppIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingAppIcon;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingAppIcon;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/PendingAppIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingAppIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/miui/home/launcher/PendingAppIcon;->mProgress:I

    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/progress/ApplicationProgressProcessor;->drawProgressIcon(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/Bitmap;I)V

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/miui/home/launcher/PendingAppIcon;->mProgress:I

    .line 53
    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingAppIcon;->postInvalidateOnAnimation()V

    return-void
.end method
