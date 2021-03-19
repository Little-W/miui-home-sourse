.class Lcom/miui/home/recents/RecentsReceiver$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/RecentsReceiver$2$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

.field final synthetic val$freeAtLast:J


# direct methods
.method constructor <init>(Lcom/miui/home/recents/RecentsReceiver$2$1;J)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iput-wide p2, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->val$freeAtLast:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 196
    iget-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iget-object p1, p1, Lcom/miui/home/recents/RecentsReceiver$2$1;->this$1:Lcom/miui/home/recents/RecentsReceiver$2;

    iget-object p1, p1, Lcom/miui/home/recents/RecentsReceiver$2;->val$wm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsReceiver$2$1;->this$1:Lcom/miui/home/recents/RecentsReceiver$2;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsReceiver$2;->val$clearButton:Lmiui/widget/CircleProgressBar;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 198
    iget-object p1, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iget-object p1, p1, Lcom/miui/home/recents/RecentsReceiver$2$1;->this$1:Lcom/miui/home/recents/RecentsReceiver$2;

    iget-object p1, p1, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    invoke-static {p1}, Lcom/miui/home/recents/RecentsReceiver;->access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsReceiver$2$1;->this$1:Lcom/miui/home/recents/RecentsReceiver$2;

    iget-wide v0, v0, Lcom/miui/home/recents/RecentsReceiver$2;->val$freeAtFirst:J

    iget-wide v2, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->val$freeAtLast:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/home/recents/views/RecentsContainer;->getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v0, p0, Lcom/miui/home/recents/RecentsReceiver$2$1$1;->this$2:Lcom/miui/home/recents/RecentsReceiver$2$1;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsReceiver$2$1;->this$1:Lcom/miui/home/recents/RecentsReceiver$2;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsReceiver$2;->this$0:Lcom/miui/home/recents/RecentsReceiver;

    invoke-static {v0}, Lcom/miui/home/recents/RecentsReceiver;->access$000(Lcom/miui/home/recents/RecentsReceiver;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
