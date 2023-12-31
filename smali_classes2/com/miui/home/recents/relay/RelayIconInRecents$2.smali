.class Lcom/miui/home/recents/relay/RelayIconInRecents$2;
.super Ljava/lang/Object;
.source "RelayIconInRecents.java"

# interfaces
.implements Lcom/xiaomi/dist/handoff/system/callback/TransferSessionToLocalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/relay/RelayIconInRecents;->performIconClick()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/relay/RelayIconInRecents;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$2;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$2;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-static {v0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$000(Lcom/miui/home/recents/relay/RelayIconInRecents;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/relay/RelayIconInRecents$2;->this$0:Lcom/miui/home/recents/relay/RelayIconInRecents;

    invoke-static {p0}, Lcom/miui/home/recents/relay/RelayIconInRecents;->access$100(Lcom/miui/home/recents/relay/RelayIconInRecents;)I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackClickRelay(Ljava/lang/String;II)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startTransferSessionToLocal fail,code = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RelayIconInRecents"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
