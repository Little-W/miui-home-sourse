.class public Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;
.super Landroid/widget/FrameLayout;
.source "FlexboxItemContainer.java"

# interfaces
.implements Lcom/miui/home/launcher/IconContainer;
.implements Lcom/miui/home/launcher/interfaces/PresentAnimationResettable;
.implements Lcom/miui/home/launcher/interfaces/UserPresentLoadingAnimIgnore;


# static fields
.field private static final SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mTargetScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "scale"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 37
    iput p1, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mTargetScale:F

    .line 38
    sget-object p1, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->SCALE_PROPERTY:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->setWillNotDraw(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getTargetScale()F
    .locals 1

    .line 55
    iget v0, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mTargetScale:F

    return v0
.end method

.method public needIgnore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needReset()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/IconContainer;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/IconContainer;

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/IconContainer;->removeShortcutIcon(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_0
    return-void
.end method

.method public setTargetScale(F)V
    .locals 4

    .line 46
    iget v0, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mTargetScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 48
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    sget-object v3, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->SCALE_PROPERTY:Landroid/util/Property;

    invoke-virtual {v3, p0}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 49
    iget-object v0, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 50
    iput p1, p0, Lcom/miui/home/launcher/hotseats/FlexboxItemContainer;->mTargetScale:F

    :cond_0
    return-void
.end method
