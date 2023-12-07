.class public Landroidx/room/RoomDatabase$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroidx/room/RoomDatabase;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllowMainThreadQueries:Z

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

.field private mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

.field private final mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

.field private mMigrationStartAndEndVersions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMigrationsNotRequiredFrom:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mQueryExecutor:Ljava/util/concurrent/Executor;

.field private mRequireMigration:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    sget-object p1, Landroidx/room/RoomDatabase$JournalMode;->AUTOMATIC:Landroidx/room/RoomDatabase$JournalMode;

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    new-instance p1, Landroidx/room/RoomDatabase$MigrationContainer;

    invoke-direct {p1}, Landroidx/room/RoomDatabase$MigrationContainer;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    return-void
.end method


# virtual methods
.method public build()Landroidx/room/RoomDatabase;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationStartAndEndVersions:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;

    invoke-direct {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$Builder;->mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    :cond_3
    new-instance v0, Landroidx/room/DatabaseConfiguration;

    iget-object v2, p0, Landroidx/room/RoomDatabase$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/room/RoomDatabase$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/RoomDatabase$Builder;->mFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iget-object v5, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    iget-object v6, p0, Landroidx/room/RoomDatabase$Builder;->mCallbacks:Ljava/util/ArrayList;

    iget-boolean v7, p0, Landroidx/room/RoomDatabase$Builder;->mAllowMainThreadQueries:Z

    iget-object v1, p0, Landroidx/room/RoomDatabase$Builder;->mJournalMode:Landroidx/room/RoomDatabase$JournalMode;

    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$JournalMode;->resolve(Landroid/content/Context;)Landroidx/room/RoomDatabase$JournalMode;

    move-result-object v8

    iget-object v9, p0, Landroidx/room/RoomDatabase$Builder;->mQueryExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v10, p0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    iget-object v11, p0, Landroidx/room/RoomDatabase$Builder;->mMigrationsNotRequiredFrom:Ljava/util/Set;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Landroidx/room/DatabaseConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/RoomDatabase$MigrationContainer;Ljava/util/List;ZLandroidx/room/RoomDatabase$JournalMode;Ljava/util/concurrent/Executor;ZLjava/util/Set;)V

    iget-object p0, p0, Landroidx/room/RoomDatabase$Builder;->mDatabaseClass:Ljava/lang/Class;

    const-string v1, "_Impl"

    invoke-static {p0, v1}, Landroidx/room/Room;->getGeneratedImplementation(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/room/RoomDatabase;

    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->init(Landroidx/room/DatabaseConfiguration;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot provide null context for the database."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/room/RoomDatabase$Builder<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/room/RoomDatabase$Builder;->mRequireMigration:Z

    return-object p0
.end method
