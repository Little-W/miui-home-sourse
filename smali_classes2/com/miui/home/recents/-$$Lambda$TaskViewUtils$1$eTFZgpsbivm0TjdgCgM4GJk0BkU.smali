.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;->f$0:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$eTFZgpsbivm0TjdgCgM4GJk0BkU;->f$0:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-static {p0}, Lcom/miui/home/recents/TaskViewUtils$1;->lambda$onAnimationEnd$0(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;)V

    return-void
.end method
