.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$P5_EnukM2h3jR86GHVO-Q4-C1SQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$P5_EnukM2h3jR86GHVO-Q4-C1SQ;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$P5_EnukM2h3jR86GHVO-Q4-C1SQ;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$removeNavStubView$4(Lcom/miui/home/recents/BaseRecentsImpl;)V

    return-void
.end method
