.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    iget-object v1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$recordFailure$4$SQLiteEventStore(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
