.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;->f$1:Z

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$6-6KCOWpkRB3L19TXPCCrMB_cfM;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$updateFsgWindowVisibilityState$9(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V

    return-void
.end method
