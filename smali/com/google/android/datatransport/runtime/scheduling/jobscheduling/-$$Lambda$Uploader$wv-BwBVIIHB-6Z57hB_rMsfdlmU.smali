.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$wv-BwBVIIHB-6Z57hB_rMsfdlmU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

.field private final synthetic f$1:Lcom/google/android/datatransport/runtime/TransportContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;Lcom/google/android/datatransport/runtime/TransportContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$wv-BwBVIIHB-6Z57hB_rMsfdlmU;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$wv-BwBVIIHB-6Z57hB_rMsfdlmU;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$wv-BwBVIIHB-6Z57hB_rMsfdlmU;->f$0:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/-$$Lambda$Uploader$wv-BwBVIIHB-6Z57hB_rMsfdlmU;->f$1:Lcom/google/android/datatransport/runtime/TransportContext;

    invoke-virtual {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->lambda$logAndUpdateState$3$Uploader(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
