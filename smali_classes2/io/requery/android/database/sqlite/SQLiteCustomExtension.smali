.class public final Lio/requery/android/database/sqlite/SQLiteCustomExtension;
.super Ljava/lang/Object;


# instance fields
.field public final entryPoint:Ljava/lang/String;

.field public final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteCustomExtension;->path:Ljava/lang/String;

    iput-object p2, p0, Lio/requery/android/database/sqlite/SQLiteCustomExtension;->entryPoint:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null path"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
