.class public final synthetic Lcom/miui/home/recents/-$$Lambda$uvKYgk0V4NELubN5Gl36moTp_tU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/OverviewComponentObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/OverviewComponentObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$uvKYgk0V4NELubN5Gl36moTp_tU;->f$0:Lcom/miui/home/recents/OverviewComponentObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$uvKYgk0V4NELubN5Gl36moTp_tU;->f$0:Lcom/miui/home/recents/OverviewComponentObserver;

    invoke-virtual {p0}, Lcom/miui/home/recents/OverviewComponentObserver;->updateOverviewTargets()V

    return-void
.end method