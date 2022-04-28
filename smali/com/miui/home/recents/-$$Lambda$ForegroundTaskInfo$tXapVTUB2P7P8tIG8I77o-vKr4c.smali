.class public final synthetic Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/ForegroundTaskInfo;

.field private final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/ForegroundTaskInfo;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;->f$0:Lcom/miui/home/recents/ForegroundTaskInfo;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;->f$0:Lcom/miui/home/recents/ForegroundTaskInfo;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskInfo$tXapVTUB2P7P8tIG8I77o-vKr4c;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-static {v0, v1, p1}, Lcom/miui/home/recents/ForegroundTaskInfo;->lambda$startForegroundSmallWindows$4(Lcom/miui/home/recents/ForegroundTaskInfo;Ljava/util/Set;Lcom/miui/home/recents/views/TaskView;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    return-object p1
.end method
