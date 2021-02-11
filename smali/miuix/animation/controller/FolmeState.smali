.class public Lmiuix/animation/controller/FolmeState;
.super Ljava/lang/Object;
.source "FolmeState.java"

# interfaces
.implements Lmiuix/animation/controller/IFolmeStateStyle;


# static fields
.field private static final DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

.field private static final DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

.field private static final sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/utils/StyleComposer$IInterceptor<",
            "Lmiuix/animation/controller/IFolmeStateStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSetToState:Lmiuix/animation/controller/AnimState;

.field private mCurTag:Ljava/lang/Object;

.field private mDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/property/FloatProperty;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableAnim:Z

.field private mPredictFrom:Lmiuix/animation/controller/AnimState;

.field private mPredictTarget:Lmiuix/animation/IAnimTarget;

.field private mPredictTo:Lmiuix/animation/controller/AnimState;

.field private mSetToState:Lmiuix/animation/controller/AnimState;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lmiuix/animation/controller/AnimState;",
            ">;"
        }
    .end annotation
.end field

.field private mTarget:Lmiuix/animation/IAnimTarget;

.field private mToState:Lmiuix/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lmiuix/animation/property/ValueProperty;

    const-string v1, "defaultProperty"

    invoke-direct {v0, v1}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    .line 34
    new-instance v0, Lmiuix/animation/property/IntValueProperty;

    const-string v1, "defaultIntProperty"

    invoke-direct {v0, v1}, Lmiuix/animation/property/IntValueProperty;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiuix/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    .line 37
    new-instance v0, Lmiuix/animation/controller/FolmeState$1;

    invoke-direct {v0}, Lmiuix/animation/controller/FolmeState$1;-><init>()V

    sput-object v0, Lmiuix/animation/controller/FolmeState;->sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    return-void
.end method

.method constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "defaultTo"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mToState:Lmiuix/animation/controller/AnimState;

    .line 82
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "defaultSetTo"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mSetToState:Lmiuix/animation/controller/AnimState;

    .line 83
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "autoSetTo"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mAutoSetToState:Lmiuix/animation/controller/AnimState;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mDelList:Ljava/util/List;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    .line 92
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mToState:Lmiuix/animation/controller/AnimState;

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    .line 96
    iput-object p1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-void
.end method

.method static synthetic access$000(Lmiuix/animation/controller/FolmeState;)Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 29
    iget-object p0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-object p0
.end method

.method private addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .locals 1

    .line 528
    instance-of v0, p2, Lmiuix/animation/base/AnimConfig;

    if-eqz v0, :cond_0

    .line 529
    check-cast p2, Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    const/4 p1, 0x1

    return p1

    .line 531
    :cond_0
    instance-of v0, p2, Lmiuix/animation/base/AnimConfigLink;

    if-eqz v0, :cond_1

    .line 532
    check-cast p2, Lmiuix/animation/base/AnimConfigLink;

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfigLink;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private varargs addProperty(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 560
    invoke-direct {p0, p3, p4}, Lmiuix/animation/controller/FolmeState;->getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 561
    invoke-direct {p0, p1, p2, v1}, Lmiuix/animation/controller/FolmeState;->addPropertyValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr p3, v0

    .line 563
    invoke-direct {p0, p2, p3, p4}, Lmiuix/animation/controller/FolmeState;->setInitVelocity(Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private addPropertyValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;Ljava/lang/Object;)Z
    .locals 3

    .line 587
    instance-of v0, p3, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 588
    instance-of v2, p3, Ljava/lang/Float;

    if-nez v2, :cond_1

    instance-of v2, p3, Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 589
    :cond_1
    :goto_0
    instance-of v2, p2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v2, :cond_2

    .line 590
    invoke-direct {p0, p3, v0}, Lmiuix/animation/controller/FolmeState;->toInt(Ljava/lang/Object;Z)I

    move-result p3

    new-array v0, v1, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;I[J)Lmiuix/animation/controller/AnimState;

    goto :goto_1

    .line 592
    :cond_2
    invoke-direct {p0, p3, v0}, Lmiuix/animation/controller/FolmeState;->toFloat(Ljava/lang/Object;Z)F

    move-result p3

    new-array v0, v1, [J

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private checkAndSetAnimConfig(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z
    .locals 6

    .line 504
    instance-of v0, p2, Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    instance-of v0, p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_0

    goto :goto_3

    .line 507
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 509
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_3

    .line 510
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    .line 511
    invoke-direct {p0, p1, v5}, Lmiuix/animation/controller/FolmeState;->addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v4

    .line 515
    :cond_4
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->addConfigToLink(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 505
    :cond_5
    :goto_3
    invoke-virtual {p1}, Lmiuix/animation/base/AnimConfigLink;->getHead()Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->setTempConfig(Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;)V

    return v1
.end method

.method private clearDefaultState(Lmiuix/animation/controller/AnimState;)V
    .locals 1

    .line 462
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mSetToState:Lmiuix/animation/controller/AnimState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mToState:Lmiuix/animation/controller/AnimState;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mAutoSetToState:Lmiuix/animation/controller/AnimState;

    if-ne p1, v0, :cond_1

    .line 463
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->clear()V

    :cond_1
    return-void
.end method

.method public static varargs composeStyle([Lmiuix/animation/IAnimTarget;)Lmiuix/animation/controller/IFolmeStateStyle;
    .locals 4

    if-eqz p0, :cond_3

    .line 58
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 62
    new-instance v0, Lmiuix/animation/controller/FolmeState;

    aget-object p0, p0, v1

    invoke-direct {v0, p0}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    return-object v0

    .line 64
    :cond_1
    array-length v0, p0

    new-array v0, v0, [Lmiuix/animation/controller/FolmeState;

    .line 65
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 66
    new-instance v2, Lmiuix/animation/controller/FolmeState;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lmiuix/animation/controller/FolmeState;-><init>(Lmiuix/animation/IAnimTarget;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_2
    const-class p0, Lmiuix/animation/controller/IFolmeStateStyle;

    sget-object v1, Lmiuix/animation/controller/FolmeState;->sInterceptor:Lmiuix/animation/utils/StyleComposer$IInterceptor;

    invoke-static {p0, v1, v0}, Lmiuix/animation/utils/StyleComposer;->compose(Ljava/lang/Class;Lmiuix/animation/utils/StyleComposer$IInterceptor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/IFolmeStateStyle;

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 313
    iget-boolean v0, p0, Lmiuix/animation/controller/FolmeState;->mEnableAnim:Z

    if-eqz v0, :cond_2

    .line 314
    iput-object p2, p0, Lmiuix/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    .line 315
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mToState:Lmiuix/animation/controller/AnimState;

    if-eq v0, v1, :cond_0

    .line 316
    invoke-virtual {v1, p3}, Lmiuix/animation/controller/AnimState;->getAllConfig(Lmiuix/animation/base/AnimConfigLink;)V

    .line 318
    :cond_0
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 319
    :goto_0
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    .line 318
    invoke-virtual {v0, v1, p1, p2, p3}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    :cond_2
    return-object p0
.end method

.method private getProperty(Ljava/lang/Object;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;
    .locals 2

    .line 539
    instance-of v0, p1, Lmiuix/animation/property/FloatProperty;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 540
    move-object v1, p1

    check-cast v1, Lmiuix/animation/property/FloatProperty;

    goto :goto_0

    .line 541
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 542
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 543
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lmiuix/animation/IAnimTarget;->createProperty(Ljava/lang/String;Ljava/lang/Class;)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    goto :goto_0

    .line 544
    :cond_2
    instance-of p2, p1, Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 545
    sget-object v1, Lmiuix/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    goto :goto_0

    .line 546
    :cond_3
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    .line 547
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lmiuix/animation/IAnimTarget;->getProperty(I)Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    if-nez v1, :cond_4

    .line 549
    sget-object v1, Lmiuix/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    :cond_4
    :goto_0
    return-object v1
.end method

.method private varargs getPropertyValue(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 571
    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget-object p1, p2, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 113
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 118
    new-instance p2, Lmiuix/animation/controller/AnimState;

    invoke-direct {p2, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0, p2}, Lmiuix/animation/controller/FolmeState;->addState(Lmiuix/animation/controller/AnimState;)V

    move-object p1, p2

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private varargs getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 2

    .line 601
    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 602
    aget-object v1, p2, v0

    invoke-direct {p0, v1, v0}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 604
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeState;->getStateByName([Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 608
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private varargs getStateByName([Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 4

    const/4 v0, 0x0

    .line 614
    aget-object v0, p1, v0

    .line 615
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    aget-object p1, p1, v3

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 616
    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 617
    invoke-direct {p0, v0, v3}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v2
.end method

.method private initPredictTarget()V
    .locals 5

    .line 400
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mPredictTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    const-string v0, "predictTarget"

    .line 401
    invoke-static {v0}, Lmiuix/animation/Folme;->getValueTarget(Ljava/lang/Object;)Lmiuix/animation/ValueTarget;

    move-result-object v0

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mPredictTarget:Lmiuix/animation/IAnimTarget;

    .line 402
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "predictFrom"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mPredictFrom:Lmiuix/animation/controller/AnimState;

    .line 403
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "predictTo"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mPredictTo:Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mPredictFrom:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->clear()V

    .line 406
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mPredictTo:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v0}, Lmiuix/animation/controller/AnimState;->clear()V

    .line 408
    :goto_0
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v0

    .line 409
    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mPredictTo:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/property/FloatProperty;

    .line 410
    invoke-virtual {v0, v2}, Lmiuix/animation/IAnimTarget;->getMinVisibleChange(Ljava/lang/Object;)F

    move-result v3

    .line 411
    iget-object v4, p0, Lmiuix/animation/controller/FolmeState;->mPredictTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v4, v2, v3}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private isDefaultProperty(Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    .line 500
    sget-object v0, Lmiuix/animation/controller/FolmeState;->DEFAULT_PROPERTY:Lmiuix/animation/property/ValueProperty;

    if-eq p1, v0, :cond_1

    sget-object v0, Lmiuix/animation/controller/FolmeState;->DEFAULT_INT_PROPERTY:Lmiuix/animation/property/IntValueProperty;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private varargs parse(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V
    .locals 8

    .line 476
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v0

    .line 480
    :goto_0
    array-length v0, p3

    if-ge v6, v0, :cond_2

    .line 481
    aget-object v4, p3, v6

    add-int/lit8 v0, v6, 0x1

    .line 482
    array-length v1, p3

    if-ge v0, v1, :cond_1

    aget-object v0, p3, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    .line 483
    invoke-direct/range {v1 .. v7}, Lmiuix/animation/controller/FolmeState;->setPropertyAndValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I

    move-result v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method private varargs setAnimState(Lmiuix/animation/controller/AnimState;[Ljava/lang/Object;)Lmiuix/animation/base/AnimConfigLink;
    .locals 2

    .line 468
    new-instance v0, Lmiuix/animation/base/AnimConfigLink;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfigLink;-><init>()V

    .line 469
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfigLink;->add(Lmiuix/animation/base/AnimConfig;)V

    .line 470
    invoke-direct {p0, p1}, Lmiuix/animation/controller/FolmeState;->clearDefaultState(Lmiuix/animation/controller/AnimState;)V

    .line 471
    invoke-direct {p0, p1, v0, p2}, Lmiuix/animation/controller/FolmeState;->parse(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private varargs setInitVelocity(Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)Z
    .locals 2

    .line 575
    array-length v0, p3

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return v1

    .line 578
    :cond_0
    aget-object p2, p3, p2

    .line 579
    instance-of p3, p2, Ljava/lang/Float;

    if-eqz p3, :cond_1

    .line 580
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object p3

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p3, p1, v0, v1}, Lmiuix/animation/IAnimTarget;->setVelocity(Lmiuix/animation/property/FloatProperty;D)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private varargs setPropertyAndValue(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;Ljava/lang/Object;I[Ljava/lang/Object;)I
    .locals 0

    .line 491
    invoke-direct {p0, p2, p3}, Lmiuix/animation/controller/FolmeState;->checkAndSetAnimConfig(Lmiuix/animation/base/AnimConfigLink;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 492
    invoke-direct {p0, p3, p4}, Lmiuix/animation/controller/FolmeState;->getProperty(Ljava/lang/Object;Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 493
    invoke-direct {p0, p2}, Lmiuix/animation/controller/FolmeState;->isDefaultProperty(Lmiuix/animation/property/FloatProperty;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p5, p5, 0x1

    .line 494
    :goto_0
    invoke-direct {p0, p1, p2, p5, p6}, Lmiuix/animation/controller/FolmeState;->addProperty(Lmiuix/animation/controller/AnimState;Lmiuix/animation/property/FloatProperty;I[Ljava/lang/Object;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-lez p1, :cond_2

    add-int/2addr p5, p1

    goto :goto_2

    :cond_2
    add-int/lit8 p5, p5, 0x1

    :goto_2
    return p5
.end method

.method private setTempConfig(Lmiuix/animation/base/AnimConfig;Ljava/lang/Object;)V
    .locals 2

    .line 520
    instance-of v0, p2, Lmiuix/animation/listener/TransitionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 521
    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v1, 0x0

    check-cast p2, Lmiuix/animation/listener/TransitionListener;

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    goto :goto_0

    .line 522
    :cond_0
    instance-of v0, p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    if-eqz v0, :cond_1

    .line 523
    check-cast p2, Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-virtual {p1, p2}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    :cond_1
    :goto_0
    return-void
.end method

.method private setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 140
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    if-nez v0, :cond_0

    return-object p0

    .line 143
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v1, Lmiuix/animation/controller/FolmeState$2;

    invoke-direct {v1, p0, p1, p2}, Lmiuix/animation/controller/FolmeState$2;-><init>(Lmiuix/animation/controller/FolmeState;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method private toFloat(Ljava/lang/Object;Z)F
    .locals 0

    if-eqz p2, :cond_0

    .line 627
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    return p1
.end method

.method private toInt(Ljava/lang/Object;Z)I
    .locals 0

    if-eqz p2, :cond_0

    .line 623
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-int p1, p1

    :goto_0
    return p1
.end method


# virtual methods
.method public addState(Lmiuix/animation/controller/AnimState;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancel()V
    .locals 3

    .line 336
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    const/4 v2, 0x0

    new-array v2, v2, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs cancel([Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    .line 341
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v0, v1, p1}, Lmiuix/animation/internal/AnimRunner;->cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public clean()V
    .locals 0

    .line 331
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->cancel()V

    return-void
.end method

.method public varargs end([Ljava/lang/Object;)V
    .locals 6

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 353
    instance-of v5, v4, Lmiuix/animation/property/FloatProperty;

    if-eqz v5, :cond_0

    .line 354
    check-cast v4, Lmiuix/animation/property/FloatProperty;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 356
    new-instance v5, Lmiuix/animation/property/ValueProperty;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 359
    :cond_2
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object p1

    iget-object v1, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    new-array v2, v2, [Lmiuix/animation/property/FloatProperty;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {p1, v1, v0}, Lmiuix/animation/internal/AnimRunner;->end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V

    return-void
.end method

.method public varargs fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 309
    invoke-static {p3}, Lmiuix/animation/base/AnimConfigLink;->linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentState()Lmiuix/animation/controller/AnimState;
    .locals 1

    .line 275
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mToState:Lmiuix/animation/controller/AnimState;

    iput-object v0, p0, Lmiuix/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    .line 278
    :cond_0
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mCurTag:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    return-object v0
.end method

.method public getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;
    .locals 1

    const/4 v0, 0x1

    .line 108
    invoke-direct {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;Z)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    return-object p1
.end method

.method public getTarget()Lmiuix/animation/IAnimTarget;
    .locals 1

    .line 100
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mTarget:Lmiuix/animation/IAnimTarget;

    return-object v0
.end method

.method public varargs predictDuration([Ljava/lang/Object;)J
    .locals 16

    move-object/from16 v0, p0

    .line 385
    invoke-direct/range {p0 .. p0}, Lmiuix/animation/controller/FolmeState;->initPredictTarget()V

    .line 386
    iget-object v1, v0, Lmiuix/animation/controller/FolmeState;->mPredictTo:Lmiuix/animation/controller/AnimState;

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lmiuix/animation/controller/FolmeState;->setAnimState(Lmiuix/animation/controller/AnimState;[Ljava/lang/Object;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object v7

    .line 387
    invoke-virtual/range {p0 .. p0}, Lmiuix/animation/controller/FolmeState;->getTarget()Lmiuix/animation/IAnimTarget;

    move-result-object v1

    iget-object v2, v0, Lmiuix/animation/controller/FolmeState;->mPredictFrom:Lmiuix/animation/controller/AnimState;

    iget-object v3, v0, Lmiuix/animation/controller/FolmeState;->mPredictTo:Lmiuix/animation/controller/AnimState;

    invoke-static {v1, v2, v3}, Lmiuix/animation/controller/AnimState;->alignState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;)V

    .line 389
    iget-object v2, v0, Lmiuix/animation/controller/FolmeState;->mPredictTarget:Lmiuix/animation/IAnimTarget;

    iget-object v5, v0, Lmiuix/animation/controller/FolmeState;->mPredictFrom:Lmiuix/animation/controller/AnimState;

    iget-object v6, v0, Lmiuix/animation/controller/FolmeState;->mPredictTo:Lmiuix/animation/controller/AnimState;

    const-wide/16 v8, 0x0

    move-wide v3, v8

    invoke-static/range {v2 .. v7}, Lmiuix/animation/internal/AnimRunner;->getAnimTask(Lmiuix/animation/IAnimTarget;JLmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/internal/AnimTask;

    move-result-object v1

    .line 391
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide v2

    .line 392
    :goto_0
    invoke-virtual {v1}, Lmiuix/animation/internal/AnimTask;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lmiuix/animation/internal/AnimTask;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 393
    new-array v15, v4, [J

    move-object v10, v1

    move-wide v11, v8

    move-wide v13, v2

    invoke-virtual/range {v10 .. v15}, Lmiuix/animation/internal/AnimTask;->run(JJ[J)V

    add-long/2addr v8, v2

    goto :goto_0

    :cond_0
    return-wide v8
.end method

.method public setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    const/4 v0, 0x0

    .line 131
    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0, p1, v0}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 0

    .line 136
    invoke-static {p2}, Lmiuix/animation/base/AnimConfigLink;->linkConfig([Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 1

    .line 372
    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mSetToState:Lmiuix/animation/controller/AnimState;

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 373
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->setAnimState(Lmiuix/animation/controller/AnimState;[Ljava/lang/Object;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->setTo(Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    return-object p0
.end method

.method public varargs to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;
    .locals 3

    .line 288
    instance-of v0, p1, Lmiuix/animation/controller/AnimState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lmiuix/animation/controller/FolmeState;->mStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 291
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 292
    array-length v2, p2

    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/Object;

    .line 293
    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    array-length p1, p2

    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    invoke-virtual {p0, v2}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x2

    .line 297
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p0, v0}, Lmiuix/animation/controller/FolmeState;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeState;->getState(Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method

.method public varargs to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    .locals 2

    .line 379
    invoke-virtual {p0}, Lmiuix/animation/controller/FolmeState;->getCurrentState()Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->getStateByArgs(Ljava/lang/Object;[Ljava/lang/Object;)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 380
    invoke-direct {p0, v0, p1}, Lmiuix/animation/controller/FolmeState;->setAnimState(Lmiuix/animation/controller/AnimState;[Ljava/lang/Object;)Lmiuix/animation/base/AnimConfigLink;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1}, Lmiuix/animation/controller/FolmeState;->fromTo(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/base/AnimConfigLink;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    return-object p1
.end method
