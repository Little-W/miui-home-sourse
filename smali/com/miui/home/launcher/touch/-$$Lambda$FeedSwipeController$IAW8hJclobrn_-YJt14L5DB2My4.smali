.class public final synthetic Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$IAW8hJclobrn_-YJt14L5DB2My4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/touch/FeedSwipeController;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$IAW8hJclobrn_-YJt14L5DB2My4;->f$0:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iput-object p2, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$IAW8hJclobrn_-YJt14L5DB2My4;->f$1:Lcom/miui/home/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$IAW8hJclobrn_-YJt14L5DB2My4;->f$0:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iget-object v1, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$IAW8hJclobrn_-YJt14L5DB2My4;->f$1:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/touch/FeedSwipeController;->lambda$startAnim$173(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method
