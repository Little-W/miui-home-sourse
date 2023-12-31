.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ApplicationsMessage$MessageReceiver$i37jdjaqEyTxzQiNKZia9JTHIws;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->lambda$onReceive$1$ApplicationsMessage$MessageReceiver(Landroid/content/Intent;)V

    return-void
.end method
