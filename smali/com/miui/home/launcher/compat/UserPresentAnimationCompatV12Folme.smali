.class Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;
.super Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;
.source "UserPresentAnimationCompatV12Folme.java"


# static fields
.field private static final STATE_END:Lmiuix/animation/controller/AnimState;

.field private static final STATE_END_IGNORE_TRANSLATION_X:Lmiuix/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 30
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x0

    new-array v3, v2, [J

    const/high16 v4, 0x3f800000    # 1.0f

    .line 31
    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    .line 32
    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    .line 33
    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    const/4 v5, 0x0

    .line 34
    invoke-virtual {v0, v1, v5, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    .line 35
    invoke-virtual {v0, v1, v5, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END:Lmiuix/animation/controller/AnimState;

    .line 37
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    .line 38
    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    .line 39
    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    new-array v3, v2, [J

    .line 40
    invoke-virtual {v0, v1, v4, v3}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    new-array v2, v2, [J

    .line 41
    invoke-virtual {v0, v1, v5, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END_IGNORE_TRANSLATION_X:Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    const v0, -0x4019999a    # -1.8f

    const/high16 v1, -0x3d380000    # -100.0f

    const v2, 0x3da3d70a    # 0.08f

    const/high16 v3, 0x41a00000    # 20.0f

    .line 44
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Base;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public endAnimation(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a01ea

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/IStateStyle;

    const/4 v0, 0x5

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->end([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method showUserPresentAnimation(Landroid/view/View;IZ)V
    .locals 10

    .line 49
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-direct {v0, v1}, Lmiuix/animation/base/AnimConfig;-><init>(Lmiuix/animation/property/FloatProperty;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    .line 50
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    int-to-long v4, p2

    .line 51
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    .line 52
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x4

    new-array v2, v2, [Lmiuix/animation/property/FloatProperty;

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v8, 0x1

    aput-object v6, v2, v8

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    aput-object v6, v2, v1

    sget-object v6, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v9, 0x3

    aput-object v6, v2, v9

    invoke-direct {v0, v2}, Lmiuix/animation/base/AnimConfig;-><init>([Lmiuix/animation/property/FloatProperty;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    .line 53
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v4, v5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const v2, 0x7f0a01ea

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lmiuix/animation/IStateStyle;

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 60
    :cond_0
    sget-object v3, Lmiuix/animation/ViewTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    invoke-interface {v3, p1}, Lmiuix/animation/ITargetCreator;->createTarget(Ljava/lang/Object;)Lmiuix/animation/IAnimTarget;

    move-result-object v3

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    .line 61
    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object p1, v3

    :goto_0
    if-eqz p3, :cond_1

    .line 64
    sget-object p3, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END_IGNORE_TRANSLATION_X:Lmiuix/animation/controller/AnimState;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v1, v7

    aput-object v0, v1, v8

    invoke-interface {p1, p3, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 66
    :cond_1
    sget-object p3, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatV12Folme;->STATE_END:Lmiuix/animation/controller/AnimState;

    new-array v1, v1, [Lmiuix/animation/base/AnimConfig;

    aput-object p2, v1, v7

    aput-object v0, v1, v8

    invoke-interface {p1, p3, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void

    nop

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
