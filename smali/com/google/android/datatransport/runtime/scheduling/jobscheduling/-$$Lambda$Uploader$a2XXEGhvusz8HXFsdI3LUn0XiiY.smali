.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$a2XXEGhvusz8HXFsdI3LUn0XiiY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field private final synthetic f$1:Ljava/lang/Iterable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$a2XXEGhvusz8HXFsdI3LUn0XiiY;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$a2XXEGhvusz8HXFsdI3LUn0XiiY;->f$1:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$a2XXEGhvusz8HXFsdI3LUn0XiiY;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$a2XXEGhvusz8HXFsdI3LUn0XiiY;->f$1:Ljava/lang/Iterable;

    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->lambda$logAndUpdateState$5$Uploader(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
