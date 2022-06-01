.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;
.source "UserPresentAnimationCompatV12Folme.java"


# static fields
.field private static final STATE_END:Lmiuix/animation/controller/AnimState;

.field private static final STATE_END_IGNORE_TRANSLATION_X:Lmiuix/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 33
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    .line 36
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 37
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END:Lmiuix/animation/controller/AnimState;

    .line 39
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 40
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 41
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 42
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 43
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END_IGNORE_TRANSLATION_X:Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 3

    const v0, -0x3b448000    # -1500.0f

    const v1, 0x3da3d70a    # 0.08f

    const/high16 v2, 0x41a00000    # 20.0f

    .line 46
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;-><init>(Lcom/miui/home/launcher/Launcher;FFF)V

    return-void
.end method


# virtual methods
.method protected addFolmeAnimListener(Lmiuix/animation/IStateStyle;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public endAnimation(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0a02da

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/IStateStyle;

    const/4 v1, 0x0

    .line 107
    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 108
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->resetView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected setViewPrepareInfo(Landroid/view/View;FFFFF)V
    .locals 5

    const v0, 0x7f0a02da

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    float-to-double v3, p4

    .line 117
    invoke-virtual {v1, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p4

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v2, p2

    .line 118
    invoke-virtual {p4, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p3

    .line 119
    invoke-virtual {p2, p4, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p6

    .line 120
    invoke-virtual {p2, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->ignoreTranslation(Landroid/view/View;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 122
    sget-object p3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double p4, p5

    invoke-virtual {p2, p3, p4, p5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 124
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/IStateStyle;

    const/4 p3, 0x0

    .line 125
    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 127
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;->setViewPrepareInfo(Landroid/view/View;FFFFF)V

    :goto_0
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;IZ)V
    .locals 6

    .line 51
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 52
    new-instance v2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-direct {v2, v3, v1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    .line 54
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v4, 0x0

    new-array v5, v4, [F

    .line 55
    invoke-virtual {v1, v3, v0, v5}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v4, [F

    .line 56
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v4, [F

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v4, [F

    .line 58
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v4, [F

    .line 59
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/utils/EaseManager$EaseStyle;[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    int-to-long v1, p2

    .line 60
    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    const/4 v0, 0x1

    new-array v1, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme$1;-><init>(Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;)V

    aput-object v2, v1, v4

    .line 61
    invoke-virtual {p2, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    const v1, 0x7f0a02da

    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lmiuix/animation/IStateStyle;

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 89
    :cond_0
    sget-object v2, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-interface {v2, p1}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object v2

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v2

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v2

    .line 92
    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->addFolmeAnimListener(Lmiuix/animation/IStateStyle;Landroid/view/View;)V

    if-eqz p3, :cond_1

    .line 94
    sget-object p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END_IGNORE_TRANSLATION_X:Lmiuix/animation/controller/AnimState;

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, p3, v4

    invoke-interface {v1, p1, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 96
    :cond_1
    sget-object p1, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END:Lmiuix/animation/controller/AnimState;

    new-array p3, v0, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, p3, v4

    invoke-interface {v1, p1, p3}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e19999a    # 0.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f47ae14    # 0.78f
        0x3eb33333    # 0.35f
    .end array-data
.end method
