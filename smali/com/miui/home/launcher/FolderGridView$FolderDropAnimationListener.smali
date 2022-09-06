.class Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;
.super Ljava/lang/Object;
.source "FolderGridView.java"

# interfaces
.implements Lcom/miui/home/launcher/DragController$DropAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/FolderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderDropAnimationListener"
.end annotation


# instance fields
.field private mDragRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private mViewRefs:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/home/launcher/FolderGridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/FolderGridView;Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;->mViewRefs:Ljava/lang/ref/WeakReference;

    .line 768
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;->mDragRefs:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDropAnimationFinish()V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;->mViewRefs:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView;

    :goto_0
    if-eqz v0, :cond_1

    .line 775
    invoke-static {v0}, Lcom/miui/home/launcher/FolderGridView;->access$400(Lcom/miui/home/launcher/FolderGridView;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragViewContainer()Lcom/miui/home/launcher/widget/DragContainerLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/widget/DragContainerLayout;->setDragDrawClipRect(Landroid/graphics/Rect;)V

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/FolderGridView$FolderDropAnimationListener;->mDragRefs:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/launcher/DragObject;

    :goto_1
    if-eqz v1, :cond_3

    .line 779
    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/DragObject;->removeDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    :cond_3
    return-void
.end method
