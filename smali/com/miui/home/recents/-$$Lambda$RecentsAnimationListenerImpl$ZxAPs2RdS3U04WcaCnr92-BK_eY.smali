.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$1:Z

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$2:Z

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$1:Z

    iget-boolean v2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$2:Z

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$ZxAPs2RdS3U04WcaCnr92-BK_eY;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishController$0(Lcom/miui/home/recents/RecentsAnimationListenerImpl;ZZLjava/lang/Runnable;)V

    return-void
.end method
