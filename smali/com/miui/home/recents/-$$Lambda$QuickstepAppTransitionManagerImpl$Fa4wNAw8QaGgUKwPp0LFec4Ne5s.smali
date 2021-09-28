.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$10:Landroid/graphics/Rect;

.field private final synthetic f$11:Landroid/graphics/Rect;

.field private final synthetic f$12:F

.field private final synthetic f$13:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

.field private final synthetic f$4:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$5:Landroid/view/View;

.field private final synthetic f$6:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$7:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private final synthetic f$8:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$9:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$1:I

    iput p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$2:I

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$4:Lcom/miui/home/launcher/Launcher;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$5:Landroid/view/View;

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$6:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$7:Lcom/miui/home/recents/util/RectFSpringAnim;

    iput-object p9, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$8:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p10, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$9:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-object p11, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$10:Landroid/graphics/Rect;

    iput-object p12, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$11:Landroid/graphics/Rect;

    iput p13, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$12:F

    iput-object p14, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$13:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    iget v2, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$1:I

    iget v3, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$2:I

    iget-object v4, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$3:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$4:Lcom/miui/home/launcher/Launcher;

    iget-object v6, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$5:Landroid/view/View;

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$6:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$7:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$8:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v10, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$9:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-object v11, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$10:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$11:Landroid/graphics/Rect;

    iget v13, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$12:F

    iget-object v14, v0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$Fa4wNAw8QaGgUKwPp0LFec4Ne5s;->f$13:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-static/range {v1 .. v18}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$startClosingWindowAnimators$7(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;IILcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;Lcom/miui/home/launcher/Launcher;Landroid/view/View;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/RectFSpringAnim;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/Rect;Landroid/graphics/Rect;FLcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Landroid/graphics/RectF;FFF)V

    return-void
.end method
