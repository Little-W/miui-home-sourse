.class public final synthetic Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/touch/FeedSwipeController;

.field private final synthetic f$1:Lcom/miui/home/launcher/LauncherState;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;->f$0:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iput-object p2, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;->f$1:Lcom/miui/home/launcher/LauncherState;

    iput-object p3, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;->f$0:Lcom/miui/home/launcher/touch/FeedSwipeController;

    iget-object v1, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;->f$1:Lcom/miui/home/launcher/LauncherState;

    iget-object v2, p0, Lcom/miui/home/launcher/touch/-$$Lambda$FeedSwipeController$3AsGgls2fwRP_uSmSIKhkCm0kFs;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/touch/FeedSwipeController;->lambda$startAnim$1(Lcom/miui/home/launcher/touch/FeedSwipeController;Lcom/miui/home/launcher/LauncherState;Ljava/lang/Runnable;)V

    return-void
.end method
