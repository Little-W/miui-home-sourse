.class public Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;
.super Landroid/animation/ValueAnimator;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisappearValueAnim"
.end annotation


# instance fields
.field private mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 4

    .line 192
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const-wide/16 v0, 0x64

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 195
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->setFloatValues([F)V

    .line 196
    sget-object v0, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    instance-of v0, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v0, :cond_0

    .line 201
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/ShortcutIcon;

    .line 202
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setPivotY(F)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setPivotX(F)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 207
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 209
    :goto_0
    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$DisappearValueAnim$1IJKK3La0hjMZ8QS6BaR7cGNZAY;-><init>(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$DisappearValueAnim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$new$0(Landroid/view/View;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 210
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    .line 211
    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v1

    .line 212
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 213
    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    const/4 v1, 0x0

    .line 214
    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const p0, 0x3f333333    # 0.7f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->isStart()Z

    move-result p0

    if-nez p0, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->start()V

    :cond_0
    return-void
.end method
