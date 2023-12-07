.class public Landroidx/room/DatabaseConfiguration;
.super Ljava/lang/Object;


# instance fields
.field public final allowMainThreadQueries:Z

.field public final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field public final context:Landroid/content/Context;

.field public final journalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final mMigrationNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field public final name:Ljava/lang/String;

.field public final queryExecutor:Ljava/util/concurrent/Executor;

.field public final requireMigration:Z

.field public final sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;ZLjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
            "Landroidx/room/RoomDatabase$MigrationContainer;",
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;Z",
            "Landroidx/room/RoomDatabase$JournalMode;",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iput-object p1, p0, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    iput-object p5, p0, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-boolean p6, p0, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-object p7, p0, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    iput-object p8, p0, Landroidx/room/DatabaseConfiguration;->queryExecutor:Ljava/util/concurrent/Executor;

    iput-boolean p9, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    iput-object p10, p0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public isMigrationRequiredFrom(I)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/room/DatabaseConfiguration;->requireMigration:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/room/DatabaseConfiguration;->mMigrationNotRequiredFrom:Ljava/util/Set;

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
