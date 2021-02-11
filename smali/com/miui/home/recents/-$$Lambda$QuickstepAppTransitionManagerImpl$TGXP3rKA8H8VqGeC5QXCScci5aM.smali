.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$5:Landroid/view/View;

.field private final synthetic f$6:Landroid/graphics/Rect;

.field private final synthetic f$7:Landroid/graphics/Rect;

.field private final synthetic f$8:I

.field private final synthetic f$9:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$5:Landroid/view/View;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$6:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$7:Landroid/graphics/Rect;

    iput p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$8:I

    iput p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$9:F

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$1:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$2:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$3:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$4:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$5:Landroid/view/View;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$6:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$7:Landroid/graphics/Rect;

    iget v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$8:I

    iget v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$TGXP3rKA8H8VqGeC5QXCScci5aM;->f$9:F

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-static/range {v1 .. v14}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startOpeningWindowAnimators$1(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;IFLandroid/graphics/RectF;FFF)V

    return-void
.end method
