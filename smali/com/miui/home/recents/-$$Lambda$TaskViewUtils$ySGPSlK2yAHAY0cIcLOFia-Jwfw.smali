.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private final synthetic f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private final synthetic f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$5:Z

.field private final synthetic f$6:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$7:Landroid/graphics/RectF;

.field private final synthetic f$8:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iput-boolean p4, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$3:Z

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$4:Lcom/miui/home/recents/views/TaskView;

    iput-boolean p6, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$5:Z

    iput-object p7, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$6:Lcom/miui/home/recents/views/RecentsView;

    iput-object p8, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$7:Landroid/graphics/RectF;

    iput-object p9, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$8:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final onUpdate(Landroid/graphics/RectF;FFF)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$0:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    iget-object v2, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$1:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v3, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$2:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    iget-boolean v4, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$3:Z

    iget-object v5, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$4:Lcom/miui/home/recents/views/TaskView;

    iget-boolean v6, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$5:Z

    iget-object v7, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$6:Lcom/miui/home/recents/views/RecentsView;

    iget-object v8, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$7:Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$ySGPSlK2yAHAY0cIcLOFia-Jwfw;->f$8:Lcom/miui/home/recents/util/RectFSpringAnim;

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-static/range {v1 .. v13}, Lcom/miui/home/recents/TaskViewUtils;->lambda$getRecentsWindowAnimatorNew$1(Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Lcom/miui/home/recents/util/ClipAnimationHelper;Lcom/miui/home/recents/util/RemoteAnimationTargetSet;ZLcom/miui/home/recents/views/TaskView;ZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Lcom/miui/home/recents/util/RectFSpringAnim;Landroid/graphics/RectF;FFF)V

    return-void
.end method
