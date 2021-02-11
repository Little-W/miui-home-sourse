.class public abstract Lcom/miui/home/library/mirror/MirrorDragListener;
.super Ljava/lang/Object;
.source "MirrorDragListener.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    .line 11
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 24
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/mirror/MirrorDragListener;->onDragExit(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2

    .line 17
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/mirror/MirrorDragListener;->onDragEnter(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2

    .line 28
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/mirror/MirrorDragListener;->onDragEnd(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2

    .line 32
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/mirror/MirrorDragListener;->onDrop(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2

    .line 21
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/mirror/MirrorDragListener;->onDragOver(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2

    .line 13
    :pswitch_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/library/mirror/MirrorDragListener;->onDragStart(Landroid/view/View;Landroid/view/DragEvent;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onDragEnd(Landroid/view/View;Landroid/view/DragEvent;)V
.end method

.method public abstract onDragEnter(Landroid/view/View;Landroid/view/DragEvent;)V
.end method

.method public abstract onDragExit(Landroid/view/View;Landroid/view/DragEvent;)V
.end method

.method public abstract onDragOver(Landroid/view/View;Landroid/view/DragEvent;)V
.end method

.method public abstract onDragStart(Landroid/view/View;Landroid/view/DragEvent;)V
.end method

.method public abstract onDrop(Landroid/view/View;Landroid/view/DragEvent;)V
.end method
