.class Lcom/miui/home/recents/views/RecentsContainer$9;
.super Ljava/lang/Object;
.source "RecentsContainer.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/RecentsContainer;->refreshMemoryInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/RecentsContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/RecentsContainer;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 8

    .line 651
    iget-object v0, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1, p1}, Lcom/miui/home/recents/views/RecentsContainer;->getFormatedMemory(JZZ)Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v1}, Lcom/miui/home/recents/views/RecentsContainer;->access$1100(Lcom/miui/home/recents/views/RecentsContainer;)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/miui/home/recents/views/RecentsContainer;->getFormatedMemory(JZZ)Ljava/lang/String;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$1200(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, p1

    aput-object v1, v6, v4

    const v7, 0x7f110476

    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$1300(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {v3}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, p1

    aput-object v1, v6, v4

    const v7, 0x7f110477

    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$1200(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    .line 659
    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$1300(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 660
    :goto_1
    iget-object v3, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v3}, Lcom/miui/home/recents/views/RecentsContainer;->access$1400(Lcom/miui/home/recents/views/RecentsContainer;)Landroid/view/View;

    move-result-object v3

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v2, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-static {v2}, Lcom/miui/home/recents/views/RecentsContainer;->access$000(Lcom/miui/home/recents/views/RecentsContainer;)Lcom/miui/home/recents/views/CircleAndTickAnimView;

    move-result-object v2

    iget-object p0, p0, Lcom/miui/home/recents/views/RecentsContainer$9;->this$0:Lcom/miui/home/recents/views/RecentsContainer;

    invoke-virtual {p0}, Lcom/miui/home/recents/views/RecentsContainer;->getContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f110028

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, p1

    aput-object v1, v5, v4

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/miui/home/recents/views/CircleAndTickAnimView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 648
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/views/RecentsContainer$9;->accept(Ljava/lang/Long;)V

    return-void
.end method
