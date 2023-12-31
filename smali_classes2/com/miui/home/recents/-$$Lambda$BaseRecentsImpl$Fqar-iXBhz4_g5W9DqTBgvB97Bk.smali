.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Fqar-iXBhz4_g5W9DqTBgvB97Bk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Fqar-iXBhz4_g5W9DqTBgvB97Bk;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$Fqar-iXBhz4_g5W9DqTBgvB97Bk;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/BaseRecentsImpl;->lambda$registerCloudDataObserver$2$BaseRecentsImpl(Ljava/lang/Boolean;)V

    return-void
.end method
