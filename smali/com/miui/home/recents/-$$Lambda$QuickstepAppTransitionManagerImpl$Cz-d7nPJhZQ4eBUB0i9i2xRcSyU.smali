.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$10:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$5:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$6:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$7:I

.field private final synthetic f$8:I

.field private final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;ZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IIFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$5:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$6:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$7:I

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$8:I

    iput p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$9:F

    iput-boolean p11, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$10:Z

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-boolean v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$2:Z

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$5:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$6:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$7:I

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$8:I

    iget v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$9:F

    iget-boolean v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Cz-d7nPJhZQ4eBUB0i9i2xRcSyU;->f$10:Z

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-static/range {v1 .. v15}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startOpeningWindowAnimators$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;ZLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IIFZLandroid/graphics/RectF;FFF)V

    return-void
.end method
