.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskView;

.field private final synthetic f$1:F

.field private final synthetic f$2:Z

.field private final synthetic f$3:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$4:Landroid/graphics/RectF;

.field private final synthetic f$5:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$0:Lcom/miui/home/recents/views/TaskView;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$1:F

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$3:Lcom/miui/home/recents/views/RecentsView;

    iput-object p5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$4:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$5:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$0:Lcom/miui/home/recents/views/TaskView;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$1:F

    iget-boolean v2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$2:Z

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$3:Lcom/miui/home/recents/views/RecentsView;

    iget-object v4, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$4:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$xkw6iCydq9WUjUqUCEd2Ns-LjOY;->f$5:Landroid/graphics/RectF;

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->lambda$null$530(Lcom/miui/home/recents/views/TaskView;FZLcom/miui/home/recents/views/RecentsView;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
