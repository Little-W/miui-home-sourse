.class public Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragableScreenView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/DragableScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/miui/home/launcher/DragableScreenView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragableScreenView;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragableScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 115
    iget v0, p0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragableScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingLeft()V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragableScreenView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragableScreenView;->scrollDragingRight()V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->this$0:Lcom/miui/home/launcher/DragableScreenView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/home/launcher/DragableScreenView;->mDragScrollState:I

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/miui/home/launcher/DragableScreenView$ScrollRunnable;->mDirection:I

    return-void
.end method
