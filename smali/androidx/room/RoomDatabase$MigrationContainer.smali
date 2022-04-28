.class public Landroidx/room/RoomDatabase$MigrationContainer;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/RoomDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MigrationContainer"
.end annotation


# instance fields
.field private mMigrations:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/collection/SparseArrayCompat<",
            "Landroidx/room/migration/Migration;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;ZII)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    if-ge p3, p4, :cond_a

    goto :goto_1

    :cond_2
    if-le p3, p4, :cond_a

    .line 732
    :goto_1
    iget-object v3, p0, Landroidx/room/RoomDatabase$MigrationContainer;->mMigrations:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v3, p3}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/SparseArrayCompat;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    return-object v4

    .line 737
    :cond_3
    invoke-virtual {v3}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v5

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    add-int/lit8 v5, v5, -0x1

    move v7, v0

    goto :goto_2

    :cond_4
    move v7, v5

    move v5, v6

    :goto_2
    if-eq v5, v7, :cond_9

    .line 750
    invoke-virtual {v3, v5}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v8

    if-eqz p2, :cond_6

    if-gt v8, p4, :cond_5

    if-le v8, p3, :cond_5

    move v9, v1

    goto :goto_3

    :cond_5
    move v9, v6

    goto :goto_3

    :cond_6
    if-lt v8, p4, :cond_7

    if-ge v8, p3, :cond_7

    move v9, v1

    goto :goto_3

    :cond_7
    move v9, v6

    :goto_3
    if-eqz v9, :cond_8

    .line 758
    invoke-virtual {v3, v5}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v1

    move p3, v8

    goto :goto_4

    :cond_8
    add-int/2addr v5, v2

    goto :goto_2

    :cond_9
    :goto_4
    if-nez v6, :cond_1

    return-object v4

    :cond_a
    return-object p1
.end method


# virtual methods
.method public findMigrationPath(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 724
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 725
    invoke-direct {p0, v1, v0, p1, p2}, Landroidx/room/RoomDatabase$MigrationContainer;->findUpMigrationPath(Ljava/util/List;ZII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
