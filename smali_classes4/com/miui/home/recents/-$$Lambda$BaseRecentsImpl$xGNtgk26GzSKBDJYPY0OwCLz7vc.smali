.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$xGNtgk26GzSKBDJYPY0OwCLz7vc;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$disableBackStubWindow$13$BaseRecentsImpl(Z)V

    return-void
.end method
