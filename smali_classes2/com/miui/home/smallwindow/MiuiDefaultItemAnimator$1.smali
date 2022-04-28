.class Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

.field final synthetic val$moves:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$MoveInfo;

    .line 115
    iget-object v2, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v3, v1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$MoveInfo;->fromX:I

    iget v5, v1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$MoveInfo;->fromY:I

    iget v6, v1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$MoveInfo;->toX:I

    iget v7, v1, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$MoveInfo;->toY:I

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->this$0:Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;

    iget-object v0, v0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/home/smallwindow/MiuiDefaultItemAnimator$1;->val$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
