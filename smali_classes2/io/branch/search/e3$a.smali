.class public final Lio/branch/search/e3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/branch/search/u2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/e3;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/branch/search/u2<",
        "Lio/branch/search/internal/sqlite/SQLiteDBInner;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BranchSdkRoomDatabase"

    iput-object v0, p0, Lio/branch/search/e3$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Landroidx/room/RoomDatabase;
    .locals 0

    invoke-virtual {p0, p1}, Lio/branch/search/e3$a;->b(Landroid/content/Context;)Lio/branch/search/internal/sqlite/SQLiteDBInner;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/branch/search/e3$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lio/branch/search/internal/sqlite/SQLiteDBInner;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    const-string v1, "BranchSdkRoomDatabase"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    const-string v0, "Room.databaseBuilder(\n  \u2026on()\n            .build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/branch/search/internal/sqlite/SQLiteDBInner;

    return-object p1
.end method
