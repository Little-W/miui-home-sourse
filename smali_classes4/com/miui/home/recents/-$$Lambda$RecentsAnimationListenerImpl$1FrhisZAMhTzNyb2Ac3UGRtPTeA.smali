.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$1:I

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$2:Z

    iput-boolean p4, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget v1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$1:I

    iget-boolean v2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$2:Z

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$1FrhisZAMhTzNyb2Ac3UGRtPTeA;->f$3:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$finishSoscController$5$RecentsAnimationListenerImpl(IZZ)V

    return-void
.end method
