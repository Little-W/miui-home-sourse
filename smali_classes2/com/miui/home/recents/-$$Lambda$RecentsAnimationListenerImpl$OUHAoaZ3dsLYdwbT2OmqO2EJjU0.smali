.class public final synthetic Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/RecentsAnimationListenerImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;->f$0:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$RecentsAnimationListenerImpl$OUHAoaZ3dsLYdwbT2OmqO2EJjU0;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->lambda$setWindowThresholdCrossed$6$RecentsAnimationListenerImpl(Z)V

    return-void
.end method
