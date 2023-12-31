.class Lcom/miui/home/recents/views/RecentsContainer$7;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->endForClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 598
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getFreeMemory()J

    move-result-wide v7

    .line 599
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1000(Lcom/miui/home/recents/views/RecentsContainer;)J

    move-result-wide v1

    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v0}, Lcom/miui/home/recents/views/RecentsContainer;->access$1100(Lcom/miui/home/recents/views/RecentsContainer;)J

    move-result-wide v5

    move-wide v3, v7

    invoke-static/range {v1 .. v6}, Lcom/miui/home/launcher/AnalyticalDataCollectorForRecents;->sendOneKeyCleanEvent(JJJ)V

    .line 600
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v1}, Lcom/miui/home/recents/views/RecentsContainer;->access$1000(Lcom/miui/home/recents/views/RecentsContainer;)J

    move-result-wide v1

    invoke-static {v0, v1, v2, v7, v8}, Lcom/miui/home/recents/views/RecentsContainer;->getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    .line 601
    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$7;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
