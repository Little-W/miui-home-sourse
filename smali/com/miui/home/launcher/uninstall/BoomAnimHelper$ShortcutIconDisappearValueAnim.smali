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
.field private mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    const-wide/16 v0, 0x64

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    .line 121
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setFloatValues([F)V

    .line 122
    sget-object v1, Lcom/miui/home/launcher/common/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setPivotY(F)V

    .line 126
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setPivotX(F)V

    .line 128
    new-instance v0, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;

    invoke-direct {v0, p1, p2}, Lcom/miui/home/launcher/uninstall/-$$Lambda$BoomAnimHelper$ShortcutIconDisappearValueAnim$UtT5hmakbhIGoW-JpboorZ6d3m4;-><init>(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$new$0(Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 129
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f666666    # 0.9f

    .line 130
    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v1

    .line 131
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleX(F)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ShortcutIcon;->setScaleY(F)V

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, v1, p2}, Lcom/miui/home/launcher/common/Utilities;->calcProgress(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setAlpha(F)V

    const p0, 0x3f333333    # 0.7f

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->isStart()Z

    move-result p0

    if-nez p0, :cond_0

    .line 135
    invoke-virtual {p1}, Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBoomValueAnimator()Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/uninstall/BoomAnimHelper$ShortcutIconDisappearValueAnim;->mBoomByFolmeAnimator:Lcom/miui/home/launcher/uninstall/BoomByFolmeAnimator;

    return-object v0
.end method
