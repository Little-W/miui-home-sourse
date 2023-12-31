.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$iV7-zVaNm3OzwRKNnkXrWOPrqvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;


# instance fields
.field private final synthetic f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$iV7-zVaNm3OzwRKNnkXrWOPrqvk;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    return-void
.end method


# virtual methods
.method public final produce()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$iV7-zVaNm3OzwRKNnkXrWOPrqvk;->f$0:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$iV7-zVaNm3OzwRKNnkXrWOPrqvk(Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
