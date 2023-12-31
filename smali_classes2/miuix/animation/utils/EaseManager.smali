.class public Lmiuix/animation/utils/EaseManager;
.super Ljava/lang/Object;
.source "EaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/utils/EaseManager$SpringInterpolator;,
        Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;,
        Lmiuix/animation/utils/EaseManager$EaseStyle;,
        Lmiuix/animation/utils/EaseManager$EaseStyleDef;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:J = 0x12cL

.field static final sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/animation/TimeInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 144
    :pswitch_0
    new-instance p0, Lmiuix/view/animation/BounceEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 142
    :pswitch_1
    new-instance p0, Lmiuix/view/animation/BounceEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseOutInterpolator;-><init>()V

    return-object p0

    .line 140
    :pswitch_2
    new-instance p0, Lmiuix/view/animation/BounceEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/BounceEaseInInterpolator;-><init>()V

    return-object p0

    .line 138
    :pswitch_3
    new-instance p0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object p0

    .line 134
    :pswitch_4
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    .line 136
    :pswitch_5
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    .line 132
    :pswitch_6
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    .line 130
    :pswitch_7
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 128
    :pswitch_8
    new-instance p0, Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseOutInterpolator;-><init>()V

    return-object p0

    .line 126
    :pswitch_9
    new-instance p0, Lmiuix/view/animation/ExponentialEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/ExponentialEaseInInterpolator;-><init>()V

    return-object p0

    .line 124
    :pswitch_a
    new-instance p0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 122
    :pswitch_b
    new-instance p0, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    return-object p0

    .line 120
    :pswitch_c
    new-instance p0, Lmiuix/view/animation/SineEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/SineEaseInInterpolator;-><init>()V

    return-object p0

    .line 118
    :pswitch_d
    new-instance p0, Lmiuix/view/animation/QuinticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 116
    :pswitch_e
    new-instance p0, Lmiuix/view/animation/QuinticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseOutInterpolator;-><init>()V

    return-object p0

    .line 114
    :pswitch_f
    new-instance p0, Lmiuix/view/animation/QuinticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuinticEaseInInterpolator;-><init>()V

    return-object p0

    .line 112
    :pswitch_10
    new-instance p0, Lmiuix/view/animation/QuarticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 110
    :pswitch_11
    new-instance p0, Lmiuix/view/animation/QuarticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseOutInterpolator;-><init>()V

    return-object p0

    .line 108
    :pswitch_12
    new-instance p0, Lmiuix/view/animation/QuarticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuarticEaseInInterpolator;-><init>()V

    return-object p0

    .line 106
    :pswitch_13
    new-instance p0, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 104
    :pswitch_14
    new-instance p0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    return-object p0

    .line 102
    :pswitch_15
    new-instance p0, Lmiuix/view/animation/CubicEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/CubicEaseInInterpolator;-><init>()V

    return-object p0

    .line 100
    :pswitch_16
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInOutInterpolator;-><init>()V

    return-object p0

    .line 98
    :pswitch_17
    new-instance p0, Lmiuix/view/animation/QuadraticEaseOutInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseOutInterpolator;-><init>()V

    return-object p0

    .line 96
    :pswitch_18
    new-instance p0, Lmiuix/view/animation/QuadraticEaseInInterpolator;

    invoke-direct {p0}, Lmiuix/view/animation/QuadraticEaseInInterpolator;-><init>()V

    return-object p0

    .line 89
    :pswitch_19
    new-instance p0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {p0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const/4 v0, 0x0

    aget v0, p1, v0

    .line 90
    invoke-virtual {p0, v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    const/4 v0, 0x1

    aget p1, p1, v0

    .line 91
    invoke-virtual {p0, p1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object p0

    return-object p0

    .line 94
    :pswitch_1a
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_1a
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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

.method public static varargs getInterpolator(I[F)Landroid/animation/TimeInterpolator;
    .locals 0

    .line 248
    invoke-static {p0, p1}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    .line 249
    invoke-static {p0}, Lmiuix/animation/utils/EaseManager;->getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public static getInterpolator(Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;)Landroid/animation/TimeInterpolator;
    .locals 2

    if-eqz p0, :cond_1

    .line 258
    sget-object v0, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->style:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 260
    iget v0, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->style:I

    iget-object v1, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->factors:[F

    invoke-static {v0, v1}, Lmiuix/animation/utils/EaseManager;->createTimeInterpolator(I[F)Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    sget-object v1, Lmiuix/animation/utils/EaseManager;->sInterpolatorCache:Ljava/util/concurrent/ConcurrentHashMap;

    iget p0, p0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->style:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;
    .locals 1

    .line 253
    new-instance v0, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;-><init>(I[F)V

    return-object v0
.end method

.method public static varargs getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;
    .locals 3

    const/4 v0, -0x1

    if-lt p0, v0, :cond_2

    .line 236
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 237
    array-length v0, p1

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v0, v1, [F

    .line 238
    :goto_0
    invoke-static {p0, v0}, Lmiuix/animation/utils/EaseManager;->getInterpolatorStyle(I[F)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    move-result-object p0

    .line 239
    array-length v0, p1

    if-lez v0, :cond_1

    .line 240
    aget p1, p1, v1

    float-to-int p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;->setDuration(J)Lmiuix/animation/utils/EaseManager$InterpolateEaseStyle;

    :cond_1
    return-object p0

    .line 244
    :cond_2
    new-instance v0, Lmiuix/animation/utils/EaseManager$EaseStyle;

    invoke-direct {v0, p0, p1}, Lmiuix/animation/utils/EaseManager$EaseStyle;-><init>(I[F)V

    return-object v0
.end method

.method public static isPhysicsStyle(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
