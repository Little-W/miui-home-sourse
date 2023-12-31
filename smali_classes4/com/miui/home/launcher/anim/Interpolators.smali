.class public Lcom/miui/home/launcher/anim/Interpolators;
.super Ljava/lang/Object;
.source "Interpolators.java"


# static fields
.field public static final ACCEL:Landroid/view/animation/Interpolator;

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final BACK_EASE_OUT:Lmiuix/view/animation/BackEaseOutInterpolator;

.field public static final CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final DEACCEL:Landroid/view/animation/Interpolator;

.field public static final EASE_IN_OUT:Landroid/view/animation/Interpolator;

.field public static final FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final FEED_HOTSEAT_ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final FEED_HOTSEAT_ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final FEED_INDICATOR_ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final FEED_INDICATOR_ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final FEED_WORKSPACE_ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final FEED_WORKSPACE_ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

.field public static final SCROLL:Landroid/view/animation/Interpolator;

.field public static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    .line 39
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 43
    new-instance v0, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->EASE_IN_OUT:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    .line 46
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$1;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 52
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$2;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$2;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 59
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$3;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$3;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    .line 67
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$4;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$4;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    .line 81
    new-instance v0, Lmiuix/view/animation/BackEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/BackEaseOutInterpolator;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->BACK_EASE_OUT:Lmiuix/view/animation/BackEaseOutInterpolator;

    .line 83
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$5;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$5;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_WORKSPACE_ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 94
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$6;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$6;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_WORKSPACE_ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 105
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$7;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$7;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_INDICATOR_ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$8;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$8;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_INDICATOR_ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 127
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$9;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$9;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_HOTSEAT_ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 138
    new-instance v0, Lcom/miui/home/launcher/anim/Interpolators$10;

    invoke-direct {v0}, Lcom/miui/home/launcher/anim/Interpolators$10;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/anim/Interpolators;->FEED_HOTSEAT_ALPHA_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;
    .locals 1

    .line 78
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/home/launcher/anim/Interpolators;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    :goto_0
    return-object p0
.end method
