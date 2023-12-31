.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

.field private final synthetic f$1:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/SpringAnimationUtils;Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iput-object p2, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;->f$1:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;->f$0:Lcom/miui/home/recents/util/SpringAnimationUtils;

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$SpringAnimationUtils$0tIbn8s-32HCPUlja2U4j5Z3Ebk;->f$1:Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;

    check-cast p1, Lcom/miui/home/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->lambda$startTaskViewThumbnailSwipeAnim$6$SpringAnimationUtils(Lcom/miui/home/recents/util/SpringAnimationUtils$ViewState;Lcom/miui/home/recents/views/TaskViewThumbnail;)V

    return-void
.end method
