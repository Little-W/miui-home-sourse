.class public final synthetic Landroidx/emoji2/text/-$$Lambda$ConcurrencyHelpers$Qhda3GwBFI6UfuZmxtHjo-q5ORU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/-$$Lambda$ConcurrencyHelpers$Qhda3GwBFI6UfuZmxtHjo-q5ORU;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/-$$Lambda$ConcurrencyHelpers$Qhda3GwBFI6UfuZmxtHjo-q5ORU;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/emoji2/text/ConcurrencyHelpers;->lambda$createBackgroundPriorityExecutor$0(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method
