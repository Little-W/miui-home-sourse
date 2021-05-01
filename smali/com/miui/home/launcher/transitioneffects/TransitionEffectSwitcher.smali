.class public Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;
.super Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
.source "TransitionEffectSwitcher.java"


# static fields
.field public static final DEFAULT_CAMERA_DISTANCE:F

.field public static DEFAULT_ROTATE_CAMERA_DISTANCE:F

.field public static final mEffectsDrawableIds:[I


# instance fields
.field private mCurrentTypeIndex:I

.field private mCurrentTypeIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 19
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x44a00000    # 1280.0f

    mul-float/2addr v1, v2

    sput v1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->DEFAULT_CAMERA_DISTANCE:F

    .line 20
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4074000000000000L    # 320.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4094000000000000L    # 1280.0

    mul-double/2addr v1, v3

    double-to-float v0, v1

    sput v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    const/16 v0, 0x9

    .line 40
    new-array v0, v0, [I

    sput-object v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffectsDrawableIds:[I

    .line 44
    sget-object v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffectsDrawableIds:[I

    const/4 v1, 0x0

    const v2, 0x7f080287

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f080288

    .line 45
    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f08028a

    .line 47
    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f08028b

    .line 49
    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f080289

    .line 51
    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x7f08028c

    .line 53
    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, -0x1

    .line 55
    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f08028e

    .line 56
    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x7f08028d

    .line 58
    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;-><init>()V

    const/16 v0, 0xb

    .line 36
    new-array v0, v0, [Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    iput-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    return-void
.end method

.method private addTransitionType(ILcom/miui/home/launcher/transitioneffects/TransitionEffect;)V
    .locals 3

    .line 77
    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    iget v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->createEffect(I)Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    move-result-object p1

    aput-object p1, v0, v1

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    iget v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    aget-object p1, p1, v0

    iput-object p2, p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    return-void
.end method

.method private createEffect(I)Lcom/miui/home/launcher/transitioneffects/TransitionEffect;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 135
    :pswitch_0
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectNoType;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectNoType;-><init>()V

    return-object p1

    .line 133
    :pswitch_1
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;-><init>()V

    return-object p1

    .line 131
    :pswitch_2
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectRotate;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectRotate;-><init>()V

    return-object p1

    .line 129
    :pswitch_3
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectStack;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectStack;-><init>()V

    return-object p1

    .line 127
    :pswitch_4
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectRightPage;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectRightPage;-><init>()V

    return-object p1

    .line 125
    :pswitch_5
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectLeftPage;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectLeftPage;-><init>()V

    return-object p1

    .line 123
    :pswitch_6
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCube;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCube;-><init>()V

    return-object p1

    .line 121
    :pswitch_7
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectFallDown;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectFallDown;-><init>()V

    return-object p1

    .line 119
    :pswitch_8
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCrossFade;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectCrossFade;-><init>()V

    return-object p1

    .line 117
    :pswitch_9
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;-><init>()V

    return-object p1

    .line 115
    :pswitch_a
    new-instance p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;

    invoke-direct {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectClassicNoOverShoot;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendTransitionType(I)V
    .locals 2

    .line 83
    iput p1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    .line 85
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->addTransitionType(ILcom/miui/home/launcher/transitioneffects/TransitionEffect;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOverShotTension()F
    .locals 2

    .line 153
    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    iget v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->getOverShotTension()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenSnapDuration()I
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    iget v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->getScreenSnapDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTransitionType()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    return v0
.end method

.method public final isValidType()Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    if-ltz v0, :cond_0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onScreenOrientationChanged(Landroid/content/Context;)V
    .locals 4

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 176
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4094000000000000L    # 1280.0

    mul-double/2addr v0, v2

    double-to-float p1, v0

    sput p1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->DEFAULT_ROTATE_CAMERA_DISTANCE:F

    return-void
.end method

.method public removeTransitionType(I)Z
    .locals 2

    if-ltz p1, :cond_2

    const/16 v0, 0xb

    if-ge p1, v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    .line 99
    iget v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->mPreEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    iget-object v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    iget v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->resetTransformation(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setTransitionType(I)I
    .locals 2

    .line 69
    iput p1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    .line 70
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 71
    iget-object v0, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->addTransitionType(ILcom/miui/home/launcher/transitioneffects/TransitionEffect;)V

    .line 73
    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getTransitionType()I

    move-result p1

    return p1
.end method

.method public updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 11

    move-object v0, p0

    .line 143
    invoke-virtual {p0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mCurrentTypeIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 145
    iget-object v3, v0, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->mEffects:[Lcom/miui/home/launcher/transitioneffects/TransitionEffect;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v4, v3, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/transitioneffects/TransitionEffect;->updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    return-void
.end method
