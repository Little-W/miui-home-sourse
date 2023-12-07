.class public Lcom/mi/globallauncher/view/TapTargetView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/globallauncher/view/TapTargetView$Listener;
    }
.end annotation


# instance fields
.field final CIRCLE_PADDING:I

.field final GUTTER_DIM:I

.field final SHADOW_DIM:I

.field final SHADOW_JITTER_DIM:I

.field final TARGET_PADDING:I

.field final TARGET_PULSE_RADIUS:I

.field final TARGET_RADIUS:I

.field final TEXT_MAX_WIDTH:I

.field final TEXT_PADDING:I

.field final TEXT_POSITIONING_BIAS:I

.field final TEXT_SPACING:I

.field private animators:[Landroid/animation/ValueAnimator;

.field bottomBoundary:I

.field final boundingParent:Landroid/view/ViewGroup;

.field calculatedOuterCircleRadius:I

.field cancelable:Z

.field debug:Z

.field debugLayout:Landroid/text/DynamicLayout;

.field debugPaint:Landroid/graphics/Paint;

.field debugStringBuilder:Landroid/text/SpannableStringBuilder;

.field debugTextPaint:Landroid/text/TextPaint;

.field description:Ljava/lang/CharSequence;

.field descriptionLayout:Landroid/text/StaticLayout;

.field final descriptionPaint:Landroid/text/TextPaint;

.field dimColor:I

.field final dismissAnimation:Landroid/animation/ValueAnimator;

.field private final dismissConfirmAnimation:Landroid/animation/ValueAnimator;

.field drawingBounds:Landroid/graphics/Rect;

.field final expandAnimation:Landroid/animation/ValueAnimator;

.field final expandContractUpdateListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

.field private final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field isDark:Z

.field private isDismissed:Z

.field private isDismissing:Z

.field private isInteractable:Z

.field lastTouchX:F

.field lastTouchY:F

.field listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

.field outerCircleAlpha:I

.field outerCircleCenter:[I

.field final outerCirclePaint:Landroid/graphics/Paint;

.field outerCirclePath:Landroid/graphics/Path;

.field outerCircleRadius:F

.field final outerCircleShadowPaint:Landroid/graphics/Paint;

.field outlineProvider:Landroid/view/ViewOutlineProvider;

.field final parent:Landroid/view/ViewManager;

.field final pulseAnimation:Landroid/animation/ValueAnimator;

.field shouldDrawShadow:Z

.field shouldTintTarget:Z

.field final target:Lcom/mi/globallauncher/view/TapTarget;

.field final targetBounds:Landroid/graphics/Rect;

.field targetCircleAlpha:I

.field final targetCirclePaint:Landroid/graphics/Paint;

.field targetCirclePulseAlpha:I

.field final targetCirclePulsePaint:Landroid/graphics/Paint;

.field targetCirclePulseRadius:F

.field targetCircleRadius:F

.field textAlpha:I

.field textBounds:Landroid/graphics/Rect;

.field tintedTarget:Landroid/graphics/Bitmap;

.field title:Ljava/lang/CharSequence;

.field titleLayout:Landroid/text/StaticLayout;

.field final titlePaint:Landroid/text/TextPaint;

.field topBoundary:I

.field visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIIIIIIIILandroid/view/ViewGroup;Landroid/view/ViewManager;Lcom/mi/globallauncher/view/TapTarget;Landroid/graphics/Rect;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 8

    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    iput-boolean v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    new-instance v3, Lcom/mi/globallauncher/view/TapTargetView$1;

    invoke-direct {v3, p0}, Lcom/mi/globallauncher/view/TapTargetView$1;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandContractUpdateListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->delayBy(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$3;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$3;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$2;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$2;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->repeat(I)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$4;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$4;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3, v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>(Z)V

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$6;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$6;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$5;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$5;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Lcom/mi/globallauncher/view/TapTargetView$8;

    invoke-direct {v4, p0}, Lcom/mi/globallauncher/view/TapTargetView$8;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Lcom/mi/globallauncher/view/TapTargetView$7;

    invoke-direct {v4, p0}, Lcom/mi/globallauncher/view/TapTargetView$7;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v1

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    aput-object v1, v3, v2

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    aput-object v1, v3, v2

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    aput-object v1, v3, v2

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    move v1, p2

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    move v1, p3

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    move v1, p4

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PULSE_RADIUS:I

    move v1, p5

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    move v1, p6

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    move v1, p7

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_MAX_WIDTH:I

    move/from16 v1, p8

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_POSITIONING_BIAS:I

    move/from16 v1, p9

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    move/from16 v1, p10

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    move/from16 v1, p11

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    move/from16 v1, p12

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_JITTER_DIM:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->boundingParent:Landroid/view/ViewGroup;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->parent:Landroid/view/ViewManager;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIIIIIIIIILandroid/view/ViewGroup;Landroid/view/ViewManager;Lcom/mi/globallauncher/view/TapTarget;Landroid/graphics/Rect;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 8

    move-object v0, p0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    iput-boolean v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    new-instance v3, Lcom/mi/globallauncher/view/TapTargetView$1;

    invoke-direct {v3, p0}, Lcom/mi/globallauncher/view/TapTargetView$1;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandContractUpdateListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->delayBy(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$3;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$3;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$2;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$2;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->repeat(I)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$4;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$4;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3, v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>(Z)V

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$6;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$6;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$5;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$5;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Lcom/mi/globallauncher/view/TapTargetView$8;

    invoke-direct {v4, p0}, Lcom/mi/globallauncher/view/TapTargetView$8;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Lcom/mi/globallauncher/view/TapTargetView$7;

    invoke-direct {v4, p0}, Lcom/mi/globallauncher/view/TapTargetView$7;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v1

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    aput-object v1, v3, v2

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    aput-object v1, v3, v2

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    aput-object v1, v3, v2

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    move v1, p4

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    move v1, p5

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    move v1, p6

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PULSE_RADIUS:I

    move v1, p7

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    move/from16 v1, p8

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    move/from16 v1, p9

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_MAX_WIDTH:I

    move/from16 v1, p10

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_POSITIONING_BIAS:I

    move/from16 v1, p11

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    move/from16 v1, p12

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    move/from16 v1, p13

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    move/from16 v1, p14

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_JITTER_DIM:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->boundingParent:Landroid/view/ViewGroup;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->parent:Landroid/view/ViewManager;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIIIIIIIILandroid/view/ViewGroup;Landroid/view/ViewManager;Lcom/mi/globallauncher/view/TapTarget;Landroid/graphics/Rect;Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 8

    move-object v0, p0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    iput-boolean v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    new-instance v3, Lcom/mi/globallauncher/view/TapTargetView$1;

    invoke-direct {v3, p0}, Lcom/mi/globallauncher/view/TapTargetView$1;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandContractUpdateListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->delayBy(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$3;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$3;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$2;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$2;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v6, v7}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->repeat(I)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$4;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$4;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3, v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>(Z)V

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$6;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$6;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v6, Lcom/mi/globallauncher/view/TapTargetView$5;

    invoke-direct {v6, p0}, Lcom/mi/globallauncher/view/TapTargetView$5;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Lcom/mi/globallauncher/view/TapTargetView$8;

    invoke-direct {v4, p0}, Lcom/mi/globallauncher/view/TapTargetView$8;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    new-instance v4, Lcom/mi/globallauncher/view/TapTargetView$7;

    invoke-direct {v4, p0}, Lcom/mi/globallauncher/view/TapTargetView$7;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    aput-object v4, v3, v1

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    aput-object v1, v3, v2

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    aput-object v1, v3, v2

    iget-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    aput-object v1, v3, v2

    iput-object v3, v0, Lcom/mi/globallauncher/view/TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    move v1, p3

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    move v1, p4

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    move v1, p5

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PULSE_RADIUS:I

    move v1, p6

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    move v1, p7

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    move/from16 v1, p8

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_MAX_WIDTH:I

    move/from16 v1, p9

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_POSITIONING_BIAS:I

    move/from16 v1, p10

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    move/from16 v1, p11

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    move/from16 v1, p12

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    move/from16 v1, p13

    iput v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_JITTER_DIM:I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->boundingParent:Landroid/view/ViewGroup;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->parent:Landroid/view/ViewManager;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/mi/globallauncher/view/TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V
    .locals 10

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    new-instance v2, Lcom/mi/globallauncher/view/TapTargetView$1;

    invoke-direct {v2, p0}, Lcom/mi/globallauncher/view/TapTargetView$1;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->expandContractUpdateListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    new-instance v2, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->delayBy(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Lcom/mi/globallauncher/view/TapTargetView$3;

    invoke-direct {v5, p0}, Lcom/mi/globallauncher/view/TapTargetView$3;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Lcom/mi/globallauncher/view/TapTargetView$2;

    invoke-direct {v5, p0}, Lcom/mi/globallauncher/view/TapTargetView$2;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v5, v6}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->repeat(I)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Lcom/mi/globallauncher/view/TapTargetView$4;

    invoke-direct {v5, p0}, Lcom/mi/globallauncher/view/TapTargetView$4;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v2, v1}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>(Z)V

    invoke-virtual {v2, v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Lcom/mi/globallauncher/view/TapTargetView$6;

    invoke-direct {v5, p0}, Lcom/mi/globallauncher/view/TapTargetView$6;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v5, Lcom/mi/globallauncher/view/TapTargetView$5;

    invoke-direct {v5, p0}, Lcom/mi/globallauncher/view/TapTargetView$5;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v5}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    invoke-direct {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->duration(J)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->interpolator(Landroid/animation/TimeInterpolator;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v3, Lcom/mi/globallauncher/view/TapTargetView$8;

    invoke-direct {v3, p0}, Lcom/mi/globallauncher/view/TapTargetView$8;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onUpdate(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    new-instance v3, Lcom/mi/globallauncher/view/TapTargetView$7;

    invoke-direct {v3, p0}, Lcom/mi/globallauncher/view/TapTargetView$7;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {v2, v3}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->onEnd(Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;)Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder;->build()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x4

    new-array v2, v2, [Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_9

    iput-object p4, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->parent:Landroid/view/ViewManager;

    iput-object p3, p0, Lcom/mi/globallauncher/view/TapTargetView;->boundingParent:Landroid/view/ViewGroup;

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p5, Lcom/mi/globallauncher/view/TapTargetView$Listener;

    invoke-direct {p5}, Lcom/mi/globallauncher/view/TapTargetView$Listener;-><init>()V

    :goto_0
    iput-object p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    iget-object p2, p4, Lcom/mi/globallauncher/view/TapTarget;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->title:Ljava/lang/CharSequence;

    iget-object p2, p4, Lcom/mi/globallauncher/view/TapTarget;->description:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->description:Ljava/lang/CharSequence;

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    iget p5, p4, Lcom/mi/globallauncher/view/TapTarget;->outerCirclePadding:I

    const/16 v2, 0x28

    if-lez p5, :cond_1

    iget p5, p4, Lcom/mi/globallauncher/view/TapTarget;->outerCirclePadding:I

    goto :goto_1

    :cond_1
    move p5, v2

    :goto_1
    invoke-static {p1, p5}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    iget p5, p4, Lcom/mi/globallauncher/view/TapTarget;->targetRadius:I

    invoke-static {p1, p5}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    iget p5, p4, Lcom/mi/globallauncher/view/TapTarget;->textPadding:I

    if-lez p5, :cond_2

    iget v2, p4, Lcom/mi/globallauncher/view/TapTarget;->textPadding:I

    :cond_2
    invoke-static {p1, v2}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    const/16 p5, 0x8

    invoke-static {p1, p5}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    const/16 v2, 0x168

    invoke-static {p1, v2}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_MAX_WIDTH:I

    invoke-static {p1, p2}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_POSITIONING_BIAS:I

    const/16 p2, 0x58

    invoke-static {p1, p2}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    invoke-static {p1, p5}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    invoke-static {p1, v1}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_JITTER_DIM:I

    const p2, 0x3dcccccd    # 0.1f

    iget p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float p5, p5

    mul-float/2addr p5, p2

    float-to-int p2, p5

    iput p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PULSE_RADIUS:I

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/mi/globallauncher/view/TapTarget;->titleTextSizePx(Landroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    const-string p5, "sans-serif-medium"

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1}, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextSizePx(Landroid/content/Context;)I

    move-result p5

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {p5, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p5

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    const/16 p5, 0x89

    invoke-virtual {p2, p5}, Landroid/text/TextPaint;->setAlpha(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    iget p5, p4, Lcom/mi/globallauncher/view/TapTarget;->outerCircleAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p5, v2

    float-to-int p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    const/16 p5, 0x32

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    iget p5, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_JITTER_DIM:I

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    const/high16 p5, -0x1000000

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->applyTargetOptions(Landroid/content/Context;)V

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x13

    if-lt p2, p5, :cond_3

    move p2, v1

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    instance-of p5, p1, Landroid/app/Activity;

    if-eqz p5, :cond_8

    move-object p5, p1

    check-cast p5, Landroid/app/Activity;

    invoke-virtual {p5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eqz p2, :cond_5

    const/high16 v3, 0x4000000

    and-int/2addr v3, v2

    if-nez v3, :cond_4

    invoke-virtual {p5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/Window;->getStatusBarColor()I

    move-result p5

    if-nez p5, :cond_5

    :cond_4
    move p5, v1

    goto :goto_3

    :cond_5
    move p5, v0

    :goto_3
    if-eqz p2, :cond_6

    const/high16 p2, 0x8000000

    and-int/2addr p2, v2

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_4

    :cond_6
    move p2, v0

    :goto_4
    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_7

    move v0, v1

    :cond_7
    move v8, p2

    move v7, p5

    move v9, v0

    goto :goto_5

    :cond_8
    move v7, v0

    move v8, v7

    move v9, v8

    :goto_5
    new-instance p2, Lcom/mi/globallauncher/view/TapTargetView$9;

    move-object v2, p2

    move-object v3, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v9}, Lcom/mi/globallauncher/view/TapTargetView$9;-><init>(Lcom/mi/globallauncher/view/TapTargetView;Lcom/mi/globallauncher/view/TapTarget;Landroid/view/ViewGroup;Landroid/content/Context;ZZZ)V

    iput-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/mi/globallauncher/view/TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v1}, Lcom/mi/globallauncher/view/TapTargetView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v1}, Lcom/mi/globallauncher/view/TapTargetView;->setClickable(Z)V

    new-instance p1, Lcom/mi/globallauncher/view/TapTargetView$10;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/view/TapTargetView$10;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/mi/globallauncher/view/TapTargetView$11;

    invoke-direct {p1, p0}, Lcom/mi/globallauncher/view/TapTargetView$11;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Target cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/mi/globallauncher/view/TapTargetView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mi/globallauncher/view/TapTargetView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mi/globallauncher/view/TapTargetView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->finishDismiss(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/globallauncher/view/TapTargetView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    return p0
.end method

.method static synthetic access$300(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/globallauncher/view/TapTargetView;->startExpandAnimation()V

    return-void
.end method

.method private finishDismiss(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->onDismiss(Z)V

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->parent:Landroid/view/ViewManager;

    invoke-static {p1, p0}, Lcom/mi/globallauncher/view/ViewUtil;->removeView(Landroid/view/ViewManager;Landroid/view/View;)V

    return-void
.end method

.method private getTextBoundsTop(I)I
    .locals 3

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget v1, v1, Lcom/mi/globallauncher/view/TapTarget;->textGravity:I

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->topBoundary:I

    if-le v0, p0, :cond_0

    move p1, v0

    :cond_0
    return p1

    :cond_1
    return v0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/mi/globallauncher/view/TapTarget;)Lcom/mi/globallauncher/view/TapTargetView;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTargetView;->showFor(Landroid/app/Activity;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)Lcom/mi/globallauncher/view/TapTargetView;

    move-result-object p0

    return-object p0
.end method

.method public static showFor(Landroid/app/Activity;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)Lcom/mi/globallauncher/view/TapTargetView;
    .locals 9

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v7, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v8, Lcom/mi/globallauncher/view/TapTargetView;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/mi/globallauncher/view/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V

    invoke-virtual {v0, v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v8

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/mi/globallauncher/view/TapTarget;)Lcom/mi/globallauncher/view/TapTargetView;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/globallauncher/view/TapTargetView;->showFor(Landroid/app/Dialog;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)Lcom/mi/globallauncher/view/TapTargetView;

    move-result-object p0

    return-object p0
.end method

.method public static showFor(Landroid/app/Dialog;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)Lcom/mi/globallauncher/view/TapTargetView;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo p0, "window"

    invoke-virtual {v1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v6}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v0, 0x2

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v0, 0x0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x800033

    iput v2, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v0, -0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v7, Lcom/mi/globallauncher/view/TapTargetView;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/mi/globallauncher/view/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V

    invoke-interface {p0, v7, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dialog is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private startExpandAnimation()V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->visible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->visible:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected applyTargetOptions(Landroid/content/Context;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->transparentTarget:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->tintTarget:Z

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->shouldTintTarget:Z

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->drawShadow:Z

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->shouldDrawShadow:Z

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->cancelable:Z

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->cancelable:Z

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->shouldDrawShadow:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->transparentTarget:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/mi/globallauncher/view/TapTargetView$12;

    invoke-direct {v0, p0}, Lcom/mi/globallauncher/view/TapTargetView$12;-><init>(Lcom/mi/globallauncher/view/TapTargetView;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/TapTargetView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/TapTargetView;->setElevation(F)V

    :cond_1
    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->shouldDrawShadow:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/mi/globallauncher/view/TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/mi/globallauncher/view/TapTargetView;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const-string v3, "isLightTheme"

    invoke-static {p1, v3}, Lcom/mi/globallauncher/view/UiUtil;->themeIntAttr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDark:Z

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v1, p1}, Lcom/mi/globallauncher/view/TapTarget;->outerCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    const-string v1, "colorPrimary"

    invoke-static {p1, v1}, Lcom/mi/globallauncher/view/UiUtil;->themeIntAttr(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/view/TapTarget;->targetCircleColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDark:Z

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->transparentTarget:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_8
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/view/TapTarget;->dimColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v0, v3}, Lcom/mi/globallauncher/view/UiUtil;->setAlpha(IF)I

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->dimColor:I

    goto :goto_5

    :cond_9
    iput v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->dimColor:I

    :goto_5
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/view/TapTarget;->titleTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget-boolean v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDark:Z

    if-eqz v3, :cond_b

    goto :goto_6

    :cond_b
    move v1, v2

    :goto_6
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_7
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    invoke-virtual {v0, p1}, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextColorInt(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_8

    :cond_c
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_8
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTarget;->titleTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_d
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTarget;->descriptionTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_e
    return-void
.end method

.method calculateDimensions()V
    .locals 4

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getOuterCircleCenterPoint()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/mi/globallauncher/view/TapTargetView;->getOuterCircleRadius(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->calculatedOuterCircleRadius:I

    return-void
.end method

.method calculateDrawingBounds()V
    .locals 6

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v0, v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    iget v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    sub-float/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v2, v3, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->drawingBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    add-float/2addr v2, v3

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    int-to-float p0, p0

    add-float/2addr v2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method delayedLerp(FF)F
    .locals 0

    cmpg-float p0, p1, p2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-float/2addr p1, p2

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    div-float/2addr p1, p0

    return p1
.end method

.method public dismiss(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->pulseAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->expandAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->visible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->dismissConfirmAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->dismissAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->finishDismiss(Z)V

    return-void
.end method

.method distance(IIII)D
    .locals 2

    sub-int/2addr p3, p1

    int-to-double p0, p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-int/2addr p4, p2

    int-to-double p2, p4

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method drawDebugInformation(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    const/16 v2, 0xff

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/mi/globallauncher/view/UiUtil;->dp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/mi/globallauncher/view/UiUtil;->sp(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v4, v0, v3

    int-to-float v4, v4

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v5, 0x41200000    # 10.0f

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v4, v0, v3

    int-to-float v4, v4

    aget v0, v0, v1

    int-to-float v0, v0

    iget v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->calculatedOuterCircleRadius:I

    iget v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    iget v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text bounds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\nTarget bounds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\nCenter: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v5, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nView size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    if-nez v0, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    if-nez v0, :cond_3

    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v7

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    const/16 v4, 0xdc

    invoke-virtual {v1, v4, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v1, 0x0

    iget v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->topBoundary:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v1

    int-to-float v8, v1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v9, v1

    iget-object v10, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v2, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debugLayout:Landroid/text/DynamicLayout;

    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method drawJitteredShadow(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleAlpha:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    float-to-int v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    iget v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x6

    :goto_0
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    int-to-float v5, v1

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    mul-float/2addr v5, v0

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v5, v3, v2

    int-to-float v5, v5

    aget v3, v3, v4

    iget v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_DIM:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    rsub-int/lit8 v7, v1, 0x7

    iget v8, p0, Lcom/mi/globallauncher/view/TapTargetView;->SHADOW_JITTER_DIM:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method drawTintedTarget()V
    .locals 5

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v0, v0, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->shouldTintTarget:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, p0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_2
    :goto_0
    iput-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    return-void
.end method

.method getOuterCircleCenterPoint()[I
    .locals 9

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-boolean v0, v0, Lcom/mi/globallauncher/view/TapTarget;->autoCalculateOuterCircleCenterPoint:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/TapTargetView;->inGutter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/2addr v0, v3

    iget v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getTotalTextHeight()I

    move-result v4

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    iget-object v6, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v7, p0, Lcom/mi/globallauncher/view/TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-nez v7, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Landroid/text/StaticLayout;->getHeight()I

    move-result v7

    :goto_1
    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    iget v8, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    sub-int/2addr v5, v8

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    sub-int/2addr v5, p0

    sub-int/2addr v5, v4

    add-int/2addr v5, v7

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    add-int/2addr v4, v5

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_PADDING:I

    add-int/2addr v4, p0

    add-int v5, v4, v7

    :goto_2
    new-array p0, v3, [I

    add-int/2addr v6, v0

    div-int/2addr v6, v3

    aput v6, p0, v2

    aput v5, p0, v1

    return-object p0

    :cond_4
    :goto_3
    new-array v0, v3, [I

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    aput v3, v0, v2

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    aput p0, v0, v1

    return-object v0
.end method

.method getOuterCircleRadius(IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 3

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result p4

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TARGET_RADIUS:I

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, p4, v0, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    neg-int p4, v1

    invoke-virtual {v2, p4, p4}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/mi/globallauncher/view/TapTargetView;->maxDistanceToPoints(IILandroid/graphics/Rect;)I

    move-result p3

    invoke-virtual {p0, p1, p2, v2}, Lcom/mi/globallauncher/view/TapTargetView;->maxDistanceToPoints(IILandroid/graphics/Rect;)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->CIRCLE_PADDING:I

    add-int/2addr p1, p0

    return p1
.end method

.method getTextBounds()Landroid/graphics/Rect;
    .locals 6

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getTotalTextHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getTotalTextWidth()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/mi/globallauncher/view/TapTargetView;->getTextBoundsTop(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    if-gez v3, :cond_0

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_POSITIONING_BIAS:I

    neg-int v3, v3

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_POSITIONING_BIAS:I

    :goto_0
    iget v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    iget-object v5, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v4

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    sub-int/2addr v4, p0

    add-int/2addr v1, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    new-instance v1, Landroid/graphics/Rect;

    add-int/2addr v0, v2

    invoke-direct {v1, v3, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method getTotalTextHeight()I
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    :goto_0
    add-int/2addr v0, p0

    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    goto :goto_0
.end method

.method getTotalTextWidth()I
    .locals 2

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getWidth()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method halfwayLerp(F)F
    .locals 1

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    div-float/2addr p1, p0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method inGutter(I)Z
    .locals 3

    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->bottomBoundary:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    if-lt p1, p0, :cond_0

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getHeight()I

    move-result v0

    iget p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->GUTTER_DIM:I

    sub-int/2addr v0, p0

    if-le p1, v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method invalidateViewAndOutline(Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->invalidate(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->visible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method maxDistanceToPoints(IILandroid/graphics/Rect;)I
    .locals 7

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mi/globallauncher/view/TapTargetView;->distance(IIII)D

    move-result-wide v0

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/mi/globallauncher/view/TapTargetView;->distance(IIII)D

    move-result-wide v2

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/mi/globallauncher/view/TapTargetView;->distance(IIII)D

    move-result-wide v4

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, p2, v6, p3}, Lcom/mi/globallauncher/view/TapTargetView;->distance(IIII)D

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/globallauncher/view/TapTargetView;->onDismiss(Z)V

    return-void
.end method

.method onDismiss(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissing:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->animators:[Landroid/animation/ValueAnimator;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v1, v2}, Lcom/mi/globallauncher/view/ViewUtil;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->visible:Z

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetDismissed(Lcom/mi/globallauncher/view/TapTargetView;Z)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isDismissed:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->topBoundary:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->bottomBoundary:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->bottomBoundary:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->dimColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->shouldDrawShadow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->drawJitteredShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleCenter:[I

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCircleRadius:F

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->outerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseAlpha:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    iget v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulseRadius:F

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    int-to-float v1, v1

    iget v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCircleRadius:F

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->textBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->textAlpha:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_SPACING:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget v3, v3, Lcom/mi/globallauncher/view/TapTarget;->descriptionTextAlpha:F

    iget v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->textAlpha:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->tintedTarget:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v2, v2, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v3, v3, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->targetCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget-object v1, v1, Lcom/mi/globallauncher/view/TapTarget;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debug:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView;->drawDebugInformation(Landroid/graphics/Canvas;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->cancelable:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    if-ne p1, p0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->cancelable:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->isInteractable:Z

    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/mi/globallauncher/view/TapTargetView$Listener;

    invoke-direct {p1}, Lcom/mi/globallauncher/view/TapTargetView$Listener;-><init>()V

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchY:F

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setDrawDebug(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->debug:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/mi/globallauncher/view/TapTargetView;->debug:Z

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method updateTextLayouts()V
    .locals 10

    invoke-virtual {p0}, Lcom/mi/globallauncher/view/TapTargetView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_MAX_WIDTH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->TEXT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->title:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->titlePaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget v2, v2, Lcom/mi/globallauncher/view/TapTarget;->titleTextSpacingMult:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView;->target:Lcom/mi/globallauncher/view/TapTarget;

    iget v2, v2, Lcom/mi/globallauncher/view/TapTarget;->titleTextSpacingMult:F

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    move v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->titleLayout:Landroid/text/StaticLayout;

    iget-object v3, p0, Lcom/mi/globallauncher/view/TapTargetView;->description:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    new-instance v1, Landroid/text/StaticLayout;

    iget-object v4, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v5, v0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView;->descriptionLayout:Landroid/text/StaticLayout;

    :goto_1
    return-void
.end method
