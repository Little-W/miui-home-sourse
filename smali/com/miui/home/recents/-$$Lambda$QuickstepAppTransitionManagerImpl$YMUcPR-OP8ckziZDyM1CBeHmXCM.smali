.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$4:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$5:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$6:I

.field private final synthetic f$7:I

.field private final synthetic f$8:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$5:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$6:I

    iput p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$7:I

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$8:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$5:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$6:I

    iget v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$7:I

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$YMUcPR-OP8ckziZDyM1CBeHmXCM;->f$8:F

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {v1 .. v13}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startOpeningWindowAnimators$524(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;IIFLandroid/graphics/RectF;FFF)V

    return-void
.end method
