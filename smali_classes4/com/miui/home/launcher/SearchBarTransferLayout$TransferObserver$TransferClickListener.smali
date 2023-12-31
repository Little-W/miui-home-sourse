.class Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;
.super Ljava/lang/Object;
.source "SearchBarTransferLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferClickListener"
.end annotation


# instance fields
.field private data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

.field final synthetic this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;Lcom/miui/home/launcher/SearchBarTransferLayout$1;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;Lcom/miui/home/launcher/SearchBarTransferLayout$Data;)V

    return-void
.end method

.method public static synthetic lambda$VGvfZB_KscH83U1deL7WcQDRXrc(Lcom/miui/home/launcher/SearchBarTransferLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->hideTransferIfNeed()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$SearchBarTransferLayout$TransferObserver$TransferClickListener()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object v0, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$400(Lcom/miui/home/launcher/SearchBarTransferLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$onClick$1$SearchBarTransferLayout$TransferObserver$TransferClickListener()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object v0, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->dataId:Ljava/lang/String;

    const-string v1, "onClick"

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$100(Lcom/miui/home/launcher/SearchBarTransferLayout;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 269
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object p1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->action:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "Launcher.Transfer"

    if-eqz p1, :cond_3

    .line 276
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object p1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$400(Lcom/miui/home/launcher/SearchBarTransferLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TransferClickListener$4mnJGpBADTJdJJ1dno4gyuvGnsA;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TransferClickListener$4mnJGpBADTJdJJ1dno4gyuvGnsA;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;)V

    iget-object v2, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object v2, v2, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/Launcher;->safelyStartActivity(Ljava/lang/Runnable;Landroid/content/Intent;)V

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safelyStartActivity:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object v1, v1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 271
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object p1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$400(Lcom/miui/home/launcher/SearchBarTransferLayout;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object v1, v1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBroadcast:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object v1, v1, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_2
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object p1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$900(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TransferClickListener$3khXmwyG8V0g4ouyVs39AwFBxRc;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TransferClickListener$3khXmwyG8V0g4ouyVs39AwFBxRc;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    iget-object p1, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object p1, p1, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    invoke-static {p1}, Lcom/miui/home/launcher/SearchBarTransferLayout;->access$500(Lcom/miui/home/launcher/SearchBarTransferLayout;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->this$1:Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;

    iget-object v0, v0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver;->this$0:Lcom/miui/home/launcher/SearchBarTransferLayout;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TransferClickListener$VGvfZB_KscH83U1deL7WcQDRXrc;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/-$$Lambda$SearchBarTransferLayout$TransferObserver$TransferClickListener$VGvfZB_KscH83U1deL7WcQDRXrc;-><init>(Lcom/miui/home/launcher/SearchBarTransferLayout;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$TransferObserver$TransferClickListener;->data:Lcom/miui/home/launcher/SearchBarTransferLayout$Data;

    iget-object p0, p0, Lcom/miui/home/launcher/SearchBarTransferLayout$Data;->type:Ljava/lang/String;

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackSearchBarTransferClick(Ljava/lang/String;)V

    return-void
.end method
