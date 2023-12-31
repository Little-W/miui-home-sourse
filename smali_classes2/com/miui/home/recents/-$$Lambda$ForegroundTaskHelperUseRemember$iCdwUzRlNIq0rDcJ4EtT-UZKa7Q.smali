.class public final synthetic Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;

.field private final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;->f$0:Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;->f$0:Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$ForegroundTaskHelperUseRemember$iCdwUzRlNIq0rDcJ4EtT-UZKa7Q;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/miui/home/recents/views/TaskView;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/recents/ForegroundTaskHelperUseRemember;->lambda$startForegroundSmallWindows$3$ForegroundTaskHelperUseRemember(Ljava/util/Set;Lcom/miui/home/recents/views/TaskView;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method
