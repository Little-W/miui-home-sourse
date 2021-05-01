.class public Lcom/miui/home/launcher/ThumbnailIcon;
.super Lcom/miui/launcher/views/IconView;
.source "ThumbnailIcon.java"


# instance fields
.field private mDrawTouchMask:Z

.field private mEnableDrawMaskOnPressed:Z

.field private mMaskColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/IconView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mEnableDrawMaskOnPressed:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mDrawTouchMask:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mEnableDrawMaskOnPressed:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mDrawTouchMask:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mEnableDrawMaskOnPressed:Z

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mDrawTouchMask:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/miui/launcher/views/IconView;->draw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 54
    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mEnableDrawMaskOnPressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mDrawTouchMask:Z

    if-eqz v0, :cond_0

    .line 55
    iget v0, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mMaskColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailIcon;->getDrawableState()[I

    move-result-object v0

    .line 42
    sget-object v1, Lcom/miui/home/launcher/ThumbnailIcon;->PRESSED_STATE_SET:[I

    invoke-static {v1, v0}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    .line 43
    iget-boolean v1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mDrawTouchMask:Z

    if-eq v1, v0, :cond_0

    .line 44
    iput-boolean v0, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mDrawTouchMask:Z

    .line 45
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailIcon;->invalidate()V

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/miui/launcher/views/IconView;->drawableStateChanged()V

    return-void
.end method

.method public enableDrawMaskOnPressed(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mEnableDrawMaskOnPressed:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/miui/home/launcher/ThumbnailIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ThumbnailIcon;->mMaskColor:I

    return-void
.end method
