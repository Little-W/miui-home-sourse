.class Lcom/miui/home/launcher/DragController$4;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragController;

.field final synthetic val$ev:Landroid/view/MotionEvent;

.field final synthetic val$screenX:I

.field final synthetic val$screenY:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragController;IILandroid/view/MotionEvent;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    iput p2, p0, Lcom/miui/home/launcher/DragController$4;->val$screenX:I

    iput p3, p0, Lcom/miui/home/launcher/DragController$4;->val$screenY:I

    iput-object p4, p0, Lcom/miui/home/launcher/DragController$4;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 891
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    iget v1, p0, Lcom/miui/home/launcher/DragController$4;->val$screenX:I

    iget v2, p0, Lcom/miui/home/launcher/DragController$4;->val$screenY:I

    iget-object v3, p0, Lcom/miui/home/launcher/DragController$4;->val$ev:Landroid/view/MotionEvent;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/DragController;->access$100(Lcom/miui/home/launcher/DragController;IILandroid/view/MotionEvent;)V

    .line 892
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->cancelScroll()V

    .line 893
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$200(Lcom/miui/home/launcher/DragController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    iget v1, p0, Lcom/miui/home/launcher/DragController$4;->val$screenX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/DragController$4;->val$screenY:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DragController;->access$300(Lcom/miui/home/launcher/DragController;FF)V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$400(Lcom/miui/home/launcher/DragController;)V

    .line 897
    iget-object v0, p0, Lcom/miui/home/launcher/DragController$4;->this$0:Lcom/miui/home/launcher/DragController;

    invoke-static {v0}, Lcom/miui/home/launcher/DragController;->access$500(Lcom/miui/home/launcher/DragController;)V

    return-void
.end method
