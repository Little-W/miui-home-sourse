.class Lcom/miui/home/launcher/ApplicationsMessage$2;
.super Ljava/lang/Object;
.source "ApplicationsMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ApplicationsMessage;->requestUpdateMessages(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ApplicationsMessage;

.field final synthetic val$firstTime:Z


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage;Z)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    iput-boolean p2, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->val$firstTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.extra_update_request_first_time"

    .line 203
    iget-boolean v2, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->val$firstTime:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {v1}, Lcom/miui/home/launcher/ApplicationsMessage;->access$500(Lcom/miui/home/launcher/ApplicationsMessage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
