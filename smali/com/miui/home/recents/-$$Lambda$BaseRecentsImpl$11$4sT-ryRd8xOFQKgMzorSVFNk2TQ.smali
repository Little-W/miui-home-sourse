.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$11$4sT-ryRd8xOFQKgMzorSVFNk2TQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl$11;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl$11;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$11$4sT-ryRd8xOFQKgMzorSVFNk2TQ;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$11;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$11$4sT-ryRd8xOFQKgMzorSVFNk2TQ;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$11$4sT-ryRd8xOFQKgMzorSVFNk2TQ;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$11;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$11$4sT-ryRd8xOFQKgMzorSVFNk2TQ;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl$11;->lambda$onReceive$0(Lcom/miui/home/recents/BaseRecentsImpl$11;Landroid/content/Intent;)V

    return-void
.end method
