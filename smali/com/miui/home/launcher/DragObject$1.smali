.class Lcom/miui/home/launcher/DragObject$1;
.super Ljava/lang/Object;
.source "DragObject.java"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/DragObject;-><init>([Lcom/miui/home/launcher/DragView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/DragObject;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/miui/home/launcher/DragObject$1;->this$0:Lcom/miui/home/launcher/DragObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 248
    iget-object p2, p0, Lcom/miui/home/launcher/DragObject$1;->this$0:Lcom/miui/home/launcher/DragObject;

    invoke-static {p2}, Lcom/miui/home/launcher/DragObject;->access$000(Lcom/miui/home/launcher/DragObject;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 249
    iget-object p2, p0, Lcom/miui/home/launcher/DragObject$1;->this$0:Lcom/miui/home/launcher/DragObject;

    check-cast p1, Lcom/miui/home/launcher/widget/NoSpaceToast;

    invoke-static {p2, p1}, Lcom/miui/home/launcher/DragObject;->access$102(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/widget/NoSpaceToast;)Lcom/miui/home/launcher/widget/NoSpaceToast;

    .line 250
    iget-object p1, p0, Lcom/miui/home/launcher/DragObject$1;->this$0:Lcom/miui/home/launcher/DragObject;

    invoke-static {p1}, Lcom/miui/home/launcher/DragObject;->access$200(Lcom/miui/home/launcher/DragObject;)[Lcom/miui/home/launcher/DragView;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragView;->getOwner()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/DragObject$1;->this$0:Lcom/miui/home/launcher/DragObject;

    invoke-static {p2}, Lcom/miui/home/launcher/DragObject;->access$100(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/widget/NoSpaceToast;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    iget-object p1, p0, Lcom/miui/home/launcher/DragObject$1;->this$0:Lcom/miui/home/launcher/DragObject;

    invoke-static {p1}, Lcom/miui/home/launcher/DragObject;->access$100(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/widget/NoSpaceToast;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/widget/NoSpaceToast;->setVisibility(I)V

    :cond_0
    return-void
.end method
