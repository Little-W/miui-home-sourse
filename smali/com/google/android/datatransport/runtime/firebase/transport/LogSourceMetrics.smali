.class public final Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;


# instance fields
.field private final log_event_dropped_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation
.end field

.field private final log_source_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->DEFAULT_INSTANCE:Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_source_:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_event_dropped_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getLogEventDroppedList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_event_dropped_:Ljava/util/List;

    return-object p0
.end method

.method public getLogSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->log_source_:Ljava/lang/String;

    return-object p0
.end method
