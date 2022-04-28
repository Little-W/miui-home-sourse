.class Lcom/mi/globallauncher/view/TapTargetView$11;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/globallauncher/view/TapTargetView;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Lcom/mi/globallauncher/view/TapTarget;Lcom/mi/globallauncher/view/TapTargetView$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/TapTargetView;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 621
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 623
    :cond_0
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->targetBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v1, v1, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchX:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget v2, v2, Lcom/mi/globallauncher/view/TapTargetView;->lastTouchY:F

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 624
    iget-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p1, p1, Lcom/mi/globallauncher/view/TapTargetView;->listener:Lcom/mi/globallauncher/view/TapTargetView$Listener;

    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$11;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-virtual {p1, v0}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetLongClick(Lcom/mi/globallauncher/view/TapTargetView;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
