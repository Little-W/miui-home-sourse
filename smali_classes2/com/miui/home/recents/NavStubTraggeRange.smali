.class public Lcom/miui/home/recents/NavStubTraggeRange;
.super Landroid/graphics/RectF;
.source "NavStubTraggeRange.java"


# instance fields
.field private mCenterRange:Landroid/graphics/RectF;

.field private mLeftRange:Landroid/graphics/RectF;

.field private mPath:Landroid/graphics/Path;

.field private mRightRange:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    .line 12
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public isLeftRange(F)Z
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRightRange(F)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->right:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 62
    iget-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 63
    iget-object p0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavStubTraggeRange{mLeftRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCenterRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRightRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateRegion(FFFFZ)Landroid/graphics/Path;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    if-eqz p5, :cond_0

    .line 42
    iget-object p5, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 43
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 44
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    const p5, 0x3f133333    # 0.575f

    const v0, 0x3ed9999a    # 0.425f

    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    mul-float v1, p3, v0

    mul-float v2, p3, p5

    invoke-virtual {p1, v1, p2, v2, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    const v1, 0x3da3d70a    # 0.08f

    mul-float/2addr v1, p3

    mul-float/2addr v0, p3

    invoke-virtual {p1, v1, p2, v0, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    mul-float/2addr p5, p3

    const v0, 0x3f6b851f    # 0.92f

    mul-float/2addr p3, v0

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 54
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mLeftRange:Landroid/graphics/RectF;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 55
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mCenterRange:Landroid/graphics/RectF;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 56
    iget-object p1, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mRightRange:Landroid/graphics/RectF;

    sget-object p3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 57
    iget-object p0, p0, Lcom/miui/home/recents/NavStubTraggeRange;->mPath:Landroid/graphics/Path;

    return-object p0
.end method
