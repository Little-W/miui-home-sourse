.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$10:F

.field private final synthetic f$11:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$2:Lcom/miui/home/launcher/ShortcutIcon;

.field private final synthetic f$3:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$5:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$6:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$7:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$8:Landroid/graphics/Rect;

.field private final synthetic f$9:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ILcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$1:I

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$2:Lcom/miui/home/launcher/ShortcutIcon;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$3:Lcom/miui/home/launcher/Launcher;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$5:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$6:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$7:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$8:Landroid/graphics/Rect;

    iput-object p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$9:Landroid/graphics/Rect;

    iput p11, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$10:F

    iput-object p12, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$11:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$1:I

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$2:Lcom/miui/home/launcher/ShortcutIcon;

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$3:Lcom/miui/home/launcher/Launcher;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$4:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$5:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$6:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$7:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$8:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$9:Landroid/graphics/Rect;

    iget v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$10:F

    iget-object v12, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$VM873uPuAr0YqNAVv5Qw66e7E8Y;->f$11:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    invoke-static/range {v1 .. v16}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowAnimators$7(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;ILcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Landroid/graphics/RectF;FFF)V

    return-void
.end method
