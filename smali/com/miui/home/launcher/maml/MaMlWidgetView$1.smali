.class Lcom/miui/home/launcher/maml/MaMlWidgetView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaMlWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/maml/MaMlWidgetView;->reload(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

.field final synthetic val$afterRunner:Ljava/lang/Runnable;

.field final synthetic val$hostView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/maml/MaMlWidgetView;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    iput-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->val$hostView:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->val$afterRunner:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 199
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->val$hostView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 201
    iget-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->val$hostView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->val$afterRunner:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 204
    iget-object p2, p0, Lcom/miui/home/launcher/maml/MaMlWidgetView$1;->this$0:Lcom/miui/home/launcher/maml/MaMlWidgetView;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
