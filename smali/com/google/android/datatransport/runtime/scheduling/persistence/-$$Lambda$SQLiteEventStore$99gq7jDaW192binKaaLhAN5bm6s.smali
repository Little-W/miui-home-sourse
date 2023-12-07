.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field private final synthetic f$1:Ljava/util/Map;

.field private final synthetic f$2:Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/Map;Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;->f$2:Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;->f$1:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;->f$2:Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$loadClientMetrics$19$SQLiteEventStore(Ljava/util/Map;Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;Landroid/database/Cursor;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    move-result-object p0

    return-object p0
.end method
