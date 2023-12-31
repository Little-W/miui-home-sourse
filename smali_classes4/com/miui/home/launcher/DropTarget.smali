.class public interface abstract Lcom/miui/home/launcher/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    }
.end annotation


# virtual methods
.method public abstract acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
.end method

.method public abstract getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
.end method

.method public abstract getHitView()Landroid/view/View;
.end method

.method public abstract getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public abstract onDragExit(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public abstract onDragOver(Lcom/miui/home/launcher/DragObject;)V
.end method

.method public abstract onDrop(Lcom/miui/home/launcher/DragObject;)Z
.end method

.method public abstract onDropCompleted()V
.end method

.method public abstract onDropStart(Lcom/miui/home/launcher/DragObject;)V
.end method
