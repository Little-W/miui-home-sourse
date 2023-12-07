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

    .line 201
    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    iput-boolean p2, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->val$firstTime:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_QUERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    iget-boolean v1, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->val$firstTime:Z

    const-string v2, "com.miui.extra_update_request_first_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget-object p0, p0, Lcom/miui/home/launcher/ApplicationsMessage$2;->this$0:Lcom/miui/home/launcher/ApplicationsMessage;

    invoke-static {p0}, Lcom/miui/home/launcher/ApplicationsMessage;->access$500(Lcom/miui/home/launcher/ApplicationsMessage;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
