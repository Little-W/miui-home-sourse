.class public final synthetic Lcom/miui/home/launcher/overlay/feed/-$$Lambda$lEtlMSigTz0dqrDaXy5ivk9PzmE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/feed/-$$Lambda$lEtlMSigTz0dqrDaXy5ivk9PzmE;->f$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/feed/-$$Lambda$lEtlMSigTz0dqrDaXy5ivk9PzmE;->f$0:Lcom/miui/home/launcher/overlay/feed/FeedLauncherClient;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->connect()V

    return-void
.end method
