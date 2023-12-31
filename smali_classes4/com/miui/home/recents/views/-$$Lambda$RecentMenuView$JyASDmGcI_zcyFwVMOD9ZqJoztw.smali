.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentMenuView;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentMenuView;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;->f$0:Lcom/miui/home/recents/views/RecentMenuView;

    iput-boolean p2, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;->f$0:Lcom/miui/home/recents/views/RecentMenuView;

    iget-boolean v1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;->f$1:Z

    iget-object p0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$JyASDmGcI_zcyFwVMOD9ZqJoztw;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$onClick$1$RecentMenuView(ZLjava/lang/String;)V

    return-void
.end method
