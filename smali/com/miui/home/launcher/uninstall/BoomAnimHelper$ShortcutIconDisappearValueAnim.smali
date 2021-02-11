.class public Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;
.super Landroid/animation/ValueAnimator;
.source "BoomAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/uninstall/BoomAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutIconDisappearValueAnim"
.end annotation


# instance fields
.field private mBoomValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 107
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 108
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->mBoomValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    .line 110
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setFloatValues([F)V

    .line 111
    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setPivotY(F)V

    .line 115
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setPivotX(F)V

    .line 117
    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$DNyLhQGR-BJ6mZYSDGXTX_zEtLE;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$DNyLhQGR-BJ6mZYSDGXTX_zEtLE;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$new$0(Lcom/miui/home/launcher/ShortcutIcon;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 118
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const v0, 0x3f333333    # 0.7f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 119
    invoke-static {v1, v0, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v2

    .line 120
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleX(F)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleY(F)V

    const/4 v2, 0x0

    .line 122
    invoke-static {v1, v2, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    cmpl-float p0, p2, v0

    if-ltz p0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-nez p0, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoomValueAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->mBoomValueAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method
