.class public Lcom/miui/home/launcher/folme/FolmeUtils;
.super Ljava/lang/Object;
.source "FolmeUtils.java"


# static fields
.field private static final FOLME_SOSC_HIDE_STATE:Lmiuix/animation/controller/AnimState;

.field private static final FOLME_SOSC_SHOW_STATE:Lmiuix/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "state_show"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/folme/FolmeUtils;->FOLME_SOSC_SHOW_STATE:Lmiuix/animation/controller/AnimState;

    .line 28
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "state_hide"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v2, 0x0

    .line 29
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/folme/FolmeUtils;->FOLME_SOSC_HIDE_STATE:Lmiuix/animation/controller/AnimState;

    return-void
.end method

.method static synthetic access$000()Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 17
    sget-object v0, Lcom/miui/home/launcher/folme/FolmeUtils;->FOLME_SOSC_SHOW_STATE:Lmiuix/animation/controller/AnimState;

    return-object v0
.end method

.method public static calAnimScale(Landroid/view/View;)F
    .locals 1

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    .line 43
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v0, p0, v0

    div-float/2addr v0, p0

    return v0
.end method

.method public static hideThenShowRecentsAnim(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5

    .line 48
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 49
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 50
    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const/4 v2, 0x1

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 52
    new-instance v4, Lcom/miui/home/launcher/folme/FolmeUtils$1;

    invoke-direct {v4, p1, p0, v1}, Lcom/miui/home/launcher/folme/FolmeUtils$1;-><init>(Ljava/lang/Runnable;Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V

    const/4 p1, 0x0

    aput-object v4, v3, p1

    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array v3, v2, [Lmiuix/animation/listener/TransitionListener;

    .line 61
    new-instance v4, Lcom/miui/home/launcher/folme/FolmeUtils$2;

    invoke-direct {v4, p2}, Lcom/miui/home/launcher/folme/FolmeUtils$2;-><init>(Ljava/lang/Runnable;)V

    aput-object v4, v3, p1

    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    new-array p2, v2, [Ljava/lang/Object;

    aput-object p0, p2, p1

    .line 69
    invoke-static {p2}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object p2, Lcom/miui/home/launcher/folme/FolmeUtils;->FOLME_SOSC_HIDE_STATE:Lmiuix/animation/controller/AnimState;

    new-array v1, v2, [Lmiuix/animation/base/AnimConfig;

    aput-object v0, v1, p1

    invoke-interface {p0, p2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e3851ec    # 0.18f
    .end array-data
.end method

.method public static isEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
