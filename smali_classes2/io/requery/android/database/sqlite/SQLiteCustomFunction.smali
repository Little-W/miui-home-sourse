.class public final Lio/requery/android/database/sqlite/SQLiteCustomFunction;
.super Ljava/lang/Object;
.source "SQLiteCustomFunction.java"


# instance fields
.field public final callback:Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;

.field public final name:Ljava/lang/String;

.field public final numArgs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;->name:Ljava/lang/String;

    .line 45
    iput p2, p0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;->numArgs:I

    .line 46
    iput-object p3, p0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;->callback:Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;

    return-void

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private dispatchCallback([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lio/requery/android/database/sqlite/SQLiteCustomFunction;->callback:Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-interface {p0, p1}, Lio/requery/android/database/sqlite/SQLiteDatabase$CustomFunction;->callback([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
