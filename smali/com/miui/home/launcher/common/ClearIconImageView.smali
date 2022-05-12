.class public Lcom/miui/home/launcher/common/ClearIconImageView;
.super Lcom/miui/home/launcher/LauncherIconImageView;
.source "ClearIconImageView.java"


# instance fields
.field private mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/LauncherIconImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ClearIconImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080164

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method


# virtual methods
.method public getAnimationExecutionTime()I
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v1

    mul-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public setClearByAnimator()V
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/ClearIconImageView;->stopClearAnimator()V

    .line 25
    iget-object v0, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/common/ClearIconImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iget-object v0, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public stopClearAnimator()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/miui/home/launcher/common/ClearIconImageView;->mAniamtionDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method
