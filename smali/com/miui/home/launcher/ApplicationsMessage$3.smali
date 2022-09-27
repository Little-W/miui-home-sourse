.class Lcom/miui/home/launcher/ApplicationsMessage$3;
.super Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;
.source "ApplicationsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ApplicationsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ApplicationsMessage;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$3;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/messages/LoadingFinishMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLoadingFinished()V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$3;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$3;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$600(Lcom/miui/home/launcher/ApplicationsMessage;)V

    return-void
.end method
