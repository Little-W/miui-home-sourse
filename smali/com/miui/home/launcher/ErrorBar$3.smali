.class Lcom/miui/home/launcher/ErrorBar$3;
.super Lcom/miui/home/launcher/common/ConflictsListenerAdapter;
.source "ErrorBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ErrorBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ErrorBar;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ErrorBar;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/ConflictsListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainLock()V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$300(Lcom/miui/home/launcher/ErrorBar;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$300(Lcom/miui/home/launcher/ErrorBar;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->setText(I)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$400(Lcom/miui/home/launcher/ErrorBar;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$500(Lcom/miui/home/launcher/ErrorBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 113
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$500(Lcom/miui/home/launcher/ErrorBar;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ErrorBar;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b003c

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/ErrorBar;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onReleaseLock()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ErrorBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {v0}, Lcom/miui/home/launcher/ErrorBar;->access$100(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/ErrorBar$3;->this$0:Lcom/miui/home/launcher/ErrorBar;

    invoke-static {p0}, Lcom/miui/home/launcher/ErrorBar;->access$100(Lcom/miui/home/launcher/ErrorBar;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    :cond_0
    return-void
.end method
